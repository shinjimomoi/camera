import React from 'react';

const MyComponent = () => {
  const container = document.getElementById('react-container');
  const data = JSON.parse(container.getAttribute('data-data'));
  const { message, user} = data

  return (
    <div className='container'>
      <h2>{message}, {user.name}</h2>
      <p>This is a test</p>
    </div>
  );
};

export default MyComponent;
