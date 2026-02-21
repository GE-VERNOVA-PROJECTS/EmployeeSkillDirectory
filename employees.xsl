<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>Employee Skills Directory</title>
<link rel="stylesheet" href="styles.css"/>
</head>

<body>

<header>
  <h1>Employee Skills Directory</h1>
</header>

<section class="controls">
  <input type="text" id="searchInput" placeholder="Search by name or skill..."/>
  
  <select id="skillFilter">
    <option value="">Filter by Skill</option>
    <option>JavaScript</option>
    <option>React</option>
    <option>Node.js</option>
    <option>SEO</option>
    <option>Content Writing</option>
    <option>Java</option>
    <option>Spring Boot</option>
    <option>SQL</option>
  </select>
</section>

<section id="employeeContainer" class="grid">
<xsl:for-each select="employees/employee">
  <div class="card">
    <h3><xsl:value-of select="name"/></h3>
    <p><strong>Role:</strong> <xsl:value-of select="role"/></p>
    <p><strong>Department:</strong> <xsl:value-of select="department"/></p>
    <p><strong>Email:</strong> <xsl:value-of select="email"/></p>
    <p><strong>Experience:</strong> <xsl:value-of select="experience"/> Years</p>

    <div class="skills">
      <xsl:for-each select="skills/skill">
        <span class="badge">
          <xsl:value-of select="."/>
        </span>
      </xsl:for-each>
    </div>
  </div>
</xsl:for-each>
</section>

<script src="app.js"></script>

</body>
</html>

</xsl:template>
</xsl:stylesheet>