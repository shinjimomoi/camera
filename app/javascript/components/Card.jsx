import React from 'react';

const Card = ({ camera }) => {
  return (
    <div className="card">
      {/* <img className="card-image" src={camera.imageUrl} alt={camera.name} /> */}
      <div className="card-content">
        <h3 className="card-title">{camera.model}</h3>
        <p className="card-description">{camera.condition}</p>
      </div>
    </div>
  );
};

export default Card;
