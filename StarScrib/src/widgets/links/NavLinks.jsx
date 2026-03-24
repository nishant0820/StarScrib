import React from 'react';
import { Link } from 'react-router-dom';

const NavLinks = ({ user, onClick, className = '' }) => {
  return (
    <>
      <Link to="/" className={`text-foreground/80 hover:text-primary transition-colors ${className}`} onClick={onClick}>Home</Link>
      <Link to="/products" className={`text-foreground/80 hover:text-primary transition-colors ${className}`} onClick={onClick}>Products</Link>
      <Link to="/about" className={`text-foreground/80 hover:text-primary transition-colors ${className}`} onClick={onClick}>About</Link>
      {user && user.isAdmin && (
        <Link to="/admin" className={`text-foreground/80 hover:text-primary transition-colors ${className}`} onClick={onClick}>Admin</Link>
      )}
    </>
  );
};

export default NavLinks;
