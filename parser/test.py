#! /usr/bin/env python
# -*- coding: utf-8 -*-

content = """
<tr>
    <td class="whitetext">此书刊没有复本</td>
</tr>
<tr>
     <td bgcolor="#FFFFFF" class="whitetext"><font color="red"> 此书刊可能正在订购中或者处理中 </font></td>
</tr
"""
from bs4 import BeautifulSoup
import re
tag_soup = BeautifulSoup(content)
print tag_soup