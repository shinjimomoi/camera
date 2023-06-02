import React from 'react';
import ReactDOM from 'react-dom';
import CamerasTable from '../components/CamerasTable';

document.addEventListener('DOMContentLoaded', () => {
  const camerasData = window.camerasData;
  const myCamerasData = window.myCamerasData;

  ReactDOM.render(
    <div>
      <CamerasTable cameras={camerasData} title="All Cameras" />
      {myCamerasData && <CamerasTable cameras={myCamerasData} title="My Cameras" />}
    </div>,
    document.getElementById('cameras-root')
  );
});
