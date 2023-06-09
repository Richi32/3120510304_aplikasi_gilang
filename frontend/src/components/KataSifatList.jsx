import React, {useState, useEffect} from 'react';
import { Link } from "react-router-dom";
import axios from 'axios';
import Swal from 'sweetalert2';
import withReactContent from 'sweetalert2-react-content';
import ReactPaginate from "react-paginate";
import { FaEdit, FaTrash } from 'react-icons/fa';

const KataSifatList = () => {
    const [katasifat, setKataSifat] = useState([]);
    const [page, setPage] = useState(0);
    const [limit] = useState(10);
    const [pages, setPages] = useState(0);
    const [rows, setRows] = useState(0);
    const [keyword, setKeyword] = useState("");
    const [query, setQuery] = useState("");
    const [msg, setMsg] = useState("");
    const MySwal = withReactContent(Swal);

    useEffect(()=>{
        getKataSifat();
    // eslint-disable-next-line react-hooks/exhaustive-deps
    },[page, keyword]);

    const getKataSifat =  async() => {
        const response = await axios.get(
            `http://localhost:49153/katasifat?search_query=${keyword}&page=${page}&limit=${limit}`
        );
        setKataSifat(response.data.result);
        setPage(response.data.page);
        setPages(response.data.totalPage);
        setRows(response.data.totalRows);
    }

    const deleteKataSifat = async(KataSifatId) => {
        MySwal.fire({
            title: 'Hapus data ini?',
            text: "Kamu akan kehilangan data secara permanen!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, Hapus!'
          }).then((result) => {
            if (result.isConfirmed) {
        axios.delete(`http://localhost:49153/katasifat/${KataSifatId}`);
        MySwal.fire(
            'Dihapus!',
            'Data Berhasil dihapus!'
          )
        }
        getKataSifat();
    })
    }

    const changePage = ({ selected }) => {
        setPage(selected);
        if (selected === 9) {
          setMsg(
            "Jika tidak menemukan data yang Anda cari, silahkan cari data dengan kata kunci spesifik!"
          );
        } else {
          setMsg("");
        }
      };

      const searchData = (e) => {
        e.preventDefault();
        setPage(0);
        setMsg("");
        setKeyword(query);
      };


  return (
    <div>
        <h1 className='title'>Kata Sifat</h1>
        <h2 className='subtitle'>Daftar Kata Sifat N5</h2>
        <div className="columns">
            <div className="column">
            <Link to="/katasifat/add" className='button is-primary'>Tambah</Link>
            </div>
            <div className="column"></div>
            <div className="column"></div>
            <div className="column"></div>
            <div className="column">
            <form onSubmit={searchData}>
            <div className="field has-addons ">
              <div className="control is-one-fifth ">
                <input
                  type="text"
                  className="input"
                  value={query}
                  onChange={(e) => setQuery(e.target.value)}
                  placeholder="Pencarian..."
                />
              </div>
              <div className="control">
                <button type="submit" className="button is-info">
                  Search
                </button>
              </div>
            </div>
          </form>
            </div>
        </div>
        <table className='table is-striped is-hoverable is-bordered is-fullwidth' style={{backgroundColor: '#FFFFE0'}}>
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Kanji</th>
                    <th>Romaji</th>
                    <th>Arti</th>
                    {/* <th>User</th> */}
                    <th>Opsi</th>
                </tr>
            </thead>
            <tbody>
            {katasifat.map((katasifat, index)=>(
                <tr key={katasifat.uuid}>
                    <td>{index + 1}</td>
                    <td>{katasifat.kanji}</td>
                    <td>{katasifat.romaji}</td>
                    <td>{katasifat.arti}</td>
                    {/* <td>{katasifat.user.nama}</td> */}
                    <td>
                    <Link to={`/katasifat/edit/${katasifat.uuid}`} className="button is-small is-info"><FaEdit/></Link>
                        <button onClick={()=>deleteKataSifat(katasifat.uuid)} to={`/katasifat/edit/${katasifat.uuid}`} className="button is-small is-danger"><FaTrash/></button>
                    </td>
                </tr>
                ))}
            </tbody>
        </table>
        <p>
            Total Rows: {rows} Page: {rows ? page + 1 : 0} of {pages}
          </p>
          <p className="has-text-centered has-text-danger">{msg}</p>
          <nav
            className="pagination is-centered"
            key={rows}
            role="navigation"
            aria-label="pagination"
          >
            <ReactPaginate
              previousLabel={"< Prev"}
              nextLabel={"Next >"}
              pageCount={Math.min(10, pages)}
              onPageChange={changePage}
              containerClassName={"pagination-list"}
              pageLinkClassName={"pagination-link"}
              previousLinkClassName={"pagination-previous"}
              nextLinkClassName={"pagination-next"}
              activeLinkClassName={"pagination-link is-current"}
              disabledLinkClassName={"pagination-link is-disabled"}
            />
          </nav>
    </div>
  )
}

export default KataSifatList