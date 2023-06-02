import React from 'react';
import Card from './Card';

const Cameras = ({ cameras }) => {
  return (
    <div>
      <h4>{title}</h4>
      {cameras.map((camera) => (
        <Card key={camera.id} camera={camera} />
      ))}
    </div>
  );
};

export default Cameras;
