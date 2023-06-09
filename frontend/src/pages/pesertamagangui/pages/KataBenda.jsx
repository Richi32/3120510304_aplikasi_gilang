import React, { useState, useEffect } from 'react';
import axios from 'axios';
import ReactPaginate from "react-paginate";

const KataBenda = () => {
  const [katabenda, setKataBenda] = useState([]);
  const [page, setPage] = useState(0);
  const [limit] = useState(10);
  const [pages, setPages] = useState(0);
  const [rows, setRows] = useState(0);
  const [keyword, setKeyword] = useState("");
  const [query, setQuery] = useState("");
  const [msg, setMsg] = useState("");
 
  useEffect(() => {
    getKataBenda();
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [page, keyword]);
 
  const getKataBenda = async () => {
    const response = await axios.get(
      `http://localhost:49153/getkatabenda?search_query=${keyword}&page=${page}&limit=${limit}`
    );
    setKataBenda(response.data.result);
    setPage(response.data.page);
    setPages(response.data.totalPage);
    setRows(response.data.totalRows);
  };
 
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

    // useEffect(()=>{
    //     getKataBenda();
    // },[]);

    // const getKataBenda =  async() => {
    //     const response = await axios.get('http://localhost:49153/getkatabenda');
    //     setKataBenda(response.data)
    // }

  return (
    <div>
        <h1 className='title'>Kata Benda</h1>
        <h2 className='subtitle'>Daftar Kata Benda N5</h2>
        <div className="columns">
            <div className="column"></div>
            <div className="column"></div>
            <div className="column"></div>
            <div className="column"></div>
            <div className="column">
            <form onSubmit={searchData}>
            <div className="field has-addons mb-1">
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
        <table className='table is-striped is-bordered is-fullwidth is-hoverable' style={{backgroundColor: "#ffffe0"}}>
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Kanji</th>
                    <th>Romaji</th>
                    <th>Arti</th>
                </tr>
            </thead>
            <tbody>
                {katabenda.map((katabenda, index)=>(
                <tr key={katabenda.uuid}>
                    <td>{index + 1}</td>
                    <td>{katabenda.kanji}</td>
                    <td>{katabenda.romaji}</td>
                    <td>{katabenda.arti}</td>
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

export default KataBenda