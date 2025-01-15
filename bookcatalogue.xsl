<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Book Catalogue</title>
        <style>
          /* General Body Styling */
          body {
            font-family: 'Garamond', serif;
            background-color:#eeccff;
            color: #000000; /* Black */
            margin: 0;
            padding: 0;
            font-size: 16px;
            line-height: 1.6;
          }

          /* Header Styling */
          h1 {
            text-align: center;
            font-size: 3.5em;
            text-transform: uppercase;
            color: #000000; /* Black */
            margin: 60px 0;
            letter-spacing: 5px;
          }

          /* Table Styling */
          table {
            width: 95%;
            margin: 50px auto;
            border-collapse: separate;
            border-spacing: 10px;
            background-color: #440066;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
          }

          /* Table Header Styling */
          th {
            background-color:  #8800cc;
            color: #ffffff; /* White */
            padding: 15px;
            text-align: center;
            font-weight: bold;
            font-size: 1.2em;
            text-transform: uppercase;
          }

          /* Table Row Styling */
          td {
            padding: 15px;
            text-align: center;
            background-color: #d580ff;
            font-size: 1em;
            border: 1px solid rgba(0, 0, 0, 0.1);
          }

          /* Image Styling */
          td img {
            width: 120px;
            height: 180px;
            object-fit: cover;
            border-radius: 8px;
          }
        </style>
      </head>
      <body>
        <h1>Book Catalogue</h1>
        <table>
          <thead>
            <tr>
              <th>Book ID</th>
              <th>Title</th>
              <th>Author</th>
              <th>Price (RM)</th>
              <th>Copies Sold</th>
              <th>Image</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="BookCatalogue/Book">
              <tr>
                <td><xsl:value-of select="@BookID"/></td>
                <td><xsl:value-of select="Title"/></td>
                <td><xsl:value-of select="Author"/></td>
                <td><xsl:value-of select="Price"/></td>
                <td><xsl:value-of select="CopiesSold"/></td>
                <td>
                  <img>
                    <xsl:attribute name="src">
                      <xsl:value-of select="ImageURL"/>
                    </xsl:attribute>
                  </img>
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
