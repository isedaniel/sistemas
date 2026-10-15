import { useState } from "react"

export const Navbar = () => {
  const [isSubMenuOpen, setSubMenuOpen] = useState(false);

  const toggleSubMenu = () => {
    setSubMenuOpen(!isSubMenuOpen)
  }

  return (
    <nav className="navbar">
      <ul>
        <li className="nav-item">
          <a href="#">Dashboard</a>
        </li>
        <li className="nav-item">
          <a href="#">Widgets</a>
        </li>
        <li className="nav-item">
          <button
            aria-expanded={isSubMenuOpen ? 'true' : 'false'}
            onClick={toggleSubMenu}
          >
            Apps
          </button>
          <ul
            className={isSubMenuOpen
              ? 'sub-menu sub-menu--open'
              : 'sub-menu'
            }
            aria-label="Apps"
          >
            <li>
              <a href="#">Calendar</a>
            </li>
            <li>
              <a href="#">Chat</a>
            </li>
            <li>
              <a href="#">Email</a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  )
}
