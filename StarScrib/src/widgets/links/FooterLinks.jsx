import React from 'react';
import { Link } from 'react-router-dom';

export const FooterQuickLinks = () => (
  <ul className="space-y-2">
    <li><Link to="/" className="text-gray-400 hover:text-white transition-colors">Home</Link></li>
    <li><Link to="/products" className="text-gray-400 hover:text-white transition-colors">Products</Link></li>
    <li><Link to="/cart" className="text-gray-400 hover:text-white transition-colors">Cart</Link></li>
    <li><Link to="/privacy-policy" className="text-gray-400 hover:text-white transition-colors">Privacy Policy</Link></li>
    <li><Link to="/terms-conditions" className="text-gray-400 hover:text-white transition-colors">Terms & Conditions</Link></li>
  </ul>
);

export const FooterCategoryLinks = () => (
  <ul className="space-y-2">
    <li><Link to="/products?category=notebooks" className="text-gray-400 hover:text-white transition-colors">Notebooks</Link></li>
    <li><Link to="/products?category=pens" className="text-gray-400 hover:text-white transition-colors">Pens & Pencils</Link></li>
    <li><Link to="/products?category=art" className="text-gray-400 hover:text-white transition-colors">Art Supplies</Link></li>
    <li><Link to="/products?category=office" className="text-gray-400 hover:text-white transition-colors">Office Supplies</Link></li>
    <li><Link to="/products?category=papers" className="text-gray-400 hover:text-white transition-colors">Papers</Link></li>
  </ul>
);
