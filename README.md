# NEWSYNTAX
ABAP new syntax
https://blogs.sap.com/2015/10/25/abap-740-quick-reference/

<h3><strong>Contents</strong></h3>
<ol>
<li><strong>Inline Declarations</strong></li>
<li><strong>Table Expressions</strong></li>
<li><strong>Conversion Operator CONV</strong></li>
<li><strong>Value Operator VALUE</strong></li>
<li><strong>FOR operator </strong></li>
<li><strong>Reduction operator REDUCE</strong></li>
<li><strong>Conditional operators COND and SWITCH</strong></li>
<li><strong>CORRESPONDING operator</strong></li>
<li><strong>Strings</strong></li>
<li><strong>Loop at Group By</strong></li>
<li><strong>Classes/Methods</strong></li>
<li><strong>Meshes</strong></li>
<li><strong>Filter</strong></li>
<li><strong>Document Purpose</strong></li>
</ol>
<p>&nbsp;</p>
<h1 style="text-align: center" align="center"></h1>
<h2><span style="background: #333333">1. Inline Declarations</span></h2>
<table style="font-size: 10pt;border: 2px solid #000000;width: 640px" cellspacing="0" cellpadding="0" border="2px">
<tbody>
<tr style="height: 22px">
<td style="border: 2px solid #000000;background: #f7caac;color: #000000;vertical-align: middle;text-align: left;width: 62.2273px;padding: 0px 5.4pt" valign="top">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center">
</p></td>
<td style="border: 2px solid #000000;background: #f7caac;color: #000000;vertical-align: middle;text-align: left;width: 268.534px;padding: 0px 5.4pt" valign="top">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;font-size: 9.0pt;background: white;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</td>
<td style="border: 2px solid #000000;background: #f7caac;color: #000000;vertical-align: middle;text-align: left;padding: 0px 5.4pt;width: 393.136px" valign="top">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;font-size: 9.0pt;background: white;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</td>
</tr>
<tr style="height: 44px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 62.2273px" valign="top">
<p style="margin-bottom: 0.0001pt"><strong>Data</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 268.534px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> <span class="token keyword">text</span> <span class="token keyword">TYPE</span> string<span class="token punctuation">.</span>
<span class="token keyword">text</span> <span class="token operator">=</span> <span class="token string">'ABC'</span><span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393.136px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>text<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token string">'ABC'</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 71px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 62.2273px" valign="top">
<p style="margin-bottom: 0.0001pt"><strong>Loop at into work area</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 268.534px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> wa <span class="token keyword">like</span> <span class="token keyword">LINE</span> <span class="token keyword">OF</span> itab<span class="token punctuation">.</span>
<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> itab <span class="token keyword">INTO</span> wa<span class="token punctuation">.</span>
<span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393.136px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">LOOP</span> <span class="token keyword">AT</span> itab <span class="token keyword">INTO</span> <span class="token keyword">DATA</span><span class="token punctuation">(</span>wa<span class="token punctuation">)</span><span class="token punctuation">.</span>
  <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 88px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 62.2273px" valign="top">
<p style="margin-bottom: .0001pt;background: #333333"><strong>Call method</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 268.534px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> a1 <span class="token keyword">TYPE</span> <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token keyword">DATA</span> a2 <span class="token keyword">TYPE</span> <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>

oref<span class="token token-operator punctuation">-&gt;</span>meth<span class="token punctuation">(</span> 
        <span class="token keyword">IMPORTING</span> p1 <span class="token operator">=</span> a1
        <span class="token keyword">IMPORTING</span> p2 <span class="token operator">=</span> a2 <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393.136px" valign="top">
<pre class=" language-abap"><code class=" language-abap">oref<span class="token token-operator punctuation">-&gt;</span>meth<span class="token punctuation">(</span> 
        <span class="token keyword">IMPORTING</span> p1 <span class="token operator">=</span> <span class="token keyword">DATA</span><span class="token punctuation">(</span>a1<span class="token punctuation">)</span>
        <span class="token keyword">IMPORTING</span> p2 <span class="token operator">=</span> <span class="token keyword">DATA</span><span class="token punctuation">(</span>a2<span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 79px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 62.2273px" valign="top">
<p style="margin-bottom: .0001pt;background: #333333"><strong>Loop at assigning</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 268.534px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">FIELD-SYMBOLS</span><span class="token punctuation">:</span> &lt;line&gt; <span class="token keyword">type</span> …

<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> itab <span class="token keyword">ASSIGNING</span> &lt;line&gt;<span class="token punctuation">.</span>
  <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393.136px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">LOOP</span> <span class="token keyword">AT</span> itab
   <span class="token keyword">ASSIGNING</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;line&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span>
   <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 63px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 62.2273px" valign="top">
<p style="margin-bottom: .0001pt;background: #333333"><strong>Read assigning</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 268.534px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">FIELD-SYMBOLS</span><span class="token punctuation">:</span> &lt;line&gt; <span class="token keyword">type</span> …

<span class="token keyword">READ</span> <span class="token keyword">TABLE</span> itab
           <span class="token keyword">ASSIGNING</span> &lt;line&gt;<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393.136px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">READ</span> <span class="token keyword">TABLE</span> itab
   <span class="token keyword">ASSIGNING</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;line&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 73px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 62.2273px" valign="top"><strong>Select into </strong><strong style="font-family: inherit;font-size: inherit">table</strong></td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 268.534px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> itab <span class="token keyword">TYPE</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> dbtab<span class="token punctuation">.</span>

<span class="token keyword">SELECT</span> <span class="token operator">*</span> <span class="token keyword">FROM</span> dbtab
         <span class="token keyword">INTO</span> <span class="token keyword">TABLE</span> itab
        <span class="token keyword">WHERE</span> fld1 <span class="token operator">=</span> lv_fld1<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393.136px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">SELECT</span> <span class="token operator">*</span> <span class="token keyword">FROM</span> dbtab
   <span class="token keyword">INTO</span> <span class="token keyword">TABLE</span> @DATA<span class="token punctuation">(</span>itab<span class="token punctuation">)</span> 
        <span class="token keyword">WHERE</span> fld1 <span class="token operator">=</span> @lv_fld1<span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 105px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 62.2273px" valign="top">
<p style="margin-bottom: .0001pt;background: #333333"><strong>Select single into</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 268.534px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">SELECT</span> <span class="token keyword">SINGLE</span> f1 f2
  <span class="token keyword">FROM</span> dbtab
  <span class="token keyword">INTO</span> <span class="token punctuation">(</span>lv_f1<span class="token punctuation">,</span> lv_f2<span class="token punctuation">)</span>
 <span class="token keyword">WHERE</span> <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>

 <span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> lv_f1<span class="token punctuation">,</span> lv_f2<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393.136px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">SELECT</span> <span class="token keyword">SINGLE</span> f1 <span class="token keyword">AS</span> my_f1<span class="token punctuation">,</span>
              f2 <span class="token keyword">AS</span> abc
         <span class="token keyword">FROM</span> dbtab
         <span class="token keyword">INTO</span> <span class="token keyword">DATA</span><span class="token punctuation">(</span>ls_struct<span class="token punctuation">)</span>
        <span class="token keyword">WHERE</span> <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>

<span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> ls_struct<span class="token token-operator punctuation">-</span>my_f1<span class="token punctuation">,</span>
         ls_struct<span class="token token-operator punctuation">-</span>abc<span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 11.0pt;font-family: 'Calibri',sans-serif">&nbsp;</span></p>
<h2><span style="color: #2e74b5;background: #fefeff">2. <a class="jive-link-blog-small" href="/?p=86110" data-containerid="30827" data-containertype="37" data-objectid="86110" data-objecttype="38">Table Expressions</a></span></h2>
<p><span style="font-family: 'Arial',sans-serif;color: #333333;background: white">If a table line is not found, the exception </span><span style="font-family: 'Courier New';color: #333333;background: white">CX_SY_ITAB_LINE_NOT_FOUND </span><span style="font-family: 'Arial',sans-serif;color: #333333;background: white">is raised. No </span><span style="font-family: 'Courier New';color: #333333;background: white">sy-subrc.</span></p>
<table style="font-size: 10pt;border: 2px solid #000000;width: 640px" cellspacing="0" cellpadding="0" border="2px">
<tbody>
<tr style="height: 22px">
<td style="border: 2px solid #000000;background: #f7caac;color: #000000;vertical-align: middle;text-align: left;width: 131px;padding: 0px 5.4pt" valign="top">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center">
</p></td>
<td style="border: 2px solid #000000;background: #f7caac;color: #000000;vertical-align: middle;text-align: left;width: 199px;padding: 0px 5.4pt" valign="top">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;font-size: 9.0pt;background: white;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</td>
<td style="border: 2px solid #000000;background: #f7caac;color: #000000;vertical-align: middle;text-align: left;padding: 0px 5.4pt;width: 393px" valign="top">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;font-size: 9.0pt;background: white;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</td>
</tr>
<tr style="height: 44px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 131px" valign="top">
<p style="margin-bottom: 0.0001pt"><strong>Read Table&nbsp; index</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 199px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">READ</span> <span class="token keyword">TABLE</span> itab <span class="token keyword">INDEX</span> idx  
     <span class="token keyword">INTO</span> wa<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393px" valign="top">
<pre class=" language-abap"><code class=" language-abap">wa <span class="token operator">=</span> itab[ idx ]<span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 71px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 131px" valign="top">
<p style="margin-bottom: 0.0001pt"><strong>Read Table&nbsp; using key</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 199px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">READ</span> <span class="token keyword">TABLE</span> itab <span class="token keyword">INDEX</span> idx
 <span class="token keyword">USING</span> <span class="token keyword">KEY</span> <span class="token keyword">key</span>
      <span class="token keyword">INTO</span> wa<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393px" valign="top">
<pre class=" language-abap"><code class=" language-abap">wa <span class="token operator">=</span> itab[ <span class="token keyword">KEY</span> <span class="token keyword">key</span> <span class="token keyword">INDEX</span> idx ]<span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 88px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 131px" valign="top">
<p style="margin-bottom: .0001pt;background: #333333"><strong>Read Table&nbsp; with key</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 199px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">READ</span> <span class="token keyword">TABLE</span> itab 
  <span class="token keyword">WITH</span> <span class="token keyword">KEY</span> col1 <span class="token operator">=</span> …
           col2 <span class="token operator">=</span> …
      <span class="token keyword">INTO</span> wa<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393px" valign="top">
<pre class=" language-abap"><code class=" language-abap">wa <span class="token operator">=</span> itab[ col1 <span class="token operator">=</span> … col2 <span class="token operator">=</span> … ]<span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 79px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 131px" valign="top">
<p style="margin-bottom: .0001pt;background: #333333"><strong>Read Table&nbsp; with key components</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 199px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">READ</span> <span class="token keyword">TABLE</span> itab
  <span class="token keyword">WITH</span> <span class="token keyword">TABLE</span> <span class="token keyword">KEY</span> <span class="token keyword">key</span> 
  <span class="token keyword">COMPONENTS</span> col1 <span class="token operator">=</span> …
             col2 <span class="token operator">=</span> …
        <span class="token keyword">INTO</span> wa<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393px" valign="top">
<pre class=" language-abap"><code class=" language-abap">wa <span class="token operator">=</span> itab[ <span class="token keyword">KEY</span> <span class="token keyword">key</span> col1 <span class="token operator">=</span> …
                   col2 <span class="token operator">=</span> … ]<span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 63px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 131px" valign="top">
<p style="margin-bottom: .0001pt;background: #333333"><strong>Does record exist?</strong></p>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 199px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">READ</span> <span class="token keyword">TABLE</span> itab <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span> 
     <span class="token keyword">TRANSPORTING</span> <span class="token keyword">NO</span> <span class="token keyword">FIELDS</span><span class="token punctuation">.</span>

<span class="token keyword">IF</span> sy<span class="token token-operator punctuation">-</span>subrc <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">.</span>    
   <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span> 
<span class="token keyword">ENDIF</span><span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">IF</span> line_exists<span class="token punctuation">(</span> itab[ <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span> ] <span class="token punctuation">)</span><span class="token punctuation">.</span>       
   <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token keyword">ENDIF</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 73px">
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt;width: 131px" valign="top"><strong>Get table index</strong></td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 199px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> idx <span class="token keyword">type</span> sy<span class="token token-operator punctuation">-</span>tabix<span class="token punctuation">.</span>

<span class="token keyword">READ</span> <span class="token keyword">TABLE</span> <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span> 
  <span class="token keyword">TRANSPORTING</span> <span class="token keyword">NO</span> <span class="token keyword">FIELDS</span><span class="token punctuation">.</span>
idx <span class="token operator">=</span> sy<span class="token token-operator punctuation">-</span>tabix<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 2px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt;width: 393px" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>idx<span class="token punctuation">)</span> <span class="token operator">=</span>
       line_index<span class="token punctuation">(</span> itab[ <span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span> ] <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<p><strong>NB</strong>: There will be a short dump if you use an inline expression that references a non-existent record.</p>
<p>SAP says you should therefore assign a field symbol and check sy-subrc.</p>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">ASSIGN</span> lt_tab[ <span class="token number">1</span> ] <span class="token keyword">to</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;ls_tab&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">IF</span> sy<span class="token token-operator punctuation">-</span>subrc <span class="token operator">=</span> <span class="token number">0</span><span class="token punctuation">.</span>
<span class="token punctuation">.</span><span class="token punctuation">.</span><span class="token punctuation">.</span>
<span class="token keyword">ENDIF</span><span class="token punctuation">.</span></code></pre>
<p><span class="l0s551">&nbsp;</span><strong>NB</strong>: Use itab [ <span style="font-size: 10.0pt;font-family: 'Courier New';color: black;background: white">table_line </span><span style="font-size: 10.0pt;font-family: 'Courier New';color: purple;background: white">= … ] for untyped tables.</span></p>
<p><span style="font-size: 10.0pt;font-family: 'Courier New';color: purple;background: white">&nbsp;</span></p>
<h2><span style="background: #FEFEFF">3. Conversion Operator CONV</span></h2>
<h3>I.&nbsp; Definition</h3>
<p><span style="color: #333333;background: white;font-size: 10pt;font-family: 'Courier New'"><strong>CONV dtype|#( … )</strong></span></p>
<p><span style="font-size: 10pt"><span style="color: #333333;font-family: 'Courier New';background: white"><strong>dtype</strong></span><span style="font-family: 'Courier New';color: #333333;background: white"> = Type you want to convert to (explicit)</span></span></p>
<p><span style="color: #333333;font-size: 10pt;font-family: 'Courier New';background: white"><strong>#</strong></span><span style="color: #333333;background: white;font-size: 10pt;font-family: 'Courier New'">&nbsp;&nbsp;&nbsp;&nbsp; = compiler must use the context to decide the type to convert to (implicit)</span></p>
<p><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333;background: white">&nbsp;</span></p>
<h3>II. Example</h3>
<p><span style="color: #333333;background: white;font-size: 10pt;font-family: 'Courier New'">Method</span><span style="font-size: 10pt;font-family: 'Courier New';color: #333333;background: white"> cl_abap_codepage=&gt;convert_to </span><span style="color: #333333;background: white;font-size: 10pt;font-family: 'Courier New'">expects a string</span></p>
<table style="border: 2px solid #000000;width: 633px;height: 195px" cellspacing="0" cellpadding="0" border="2px">
<thead>
<tr>
<th style="border: 2px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff;width: 582px">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 2px solid #000000;width: 100%">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> <span class="token keyword">text</span>   <span class="token keyword">TYPE</span> <span class="token keyword">c</span> <span class="token keyword">LENGTH</span> <span class="token number">255</span><span class="token punctuation">.</span>
<span class="token keyword">DATA</span> helper <span class="token keyword">TYPE</span> string<span class="token punctuation">.</span>
<span class="token keyword">DATA</span> xstr   <span class="token keyword">TYPE</span> xstring<span class="token punctuation">.</span>

helper <span class="token operator">=</span> <span class="token keyword">text</span><span class="token punctuation">.</span>

xstr <span class="token operator">=</span> cl_abap_codepage<span class="token token-operator punctuation">=&gt;</span>convert_to<span class="token punctuation">(</span> <span class="token keyword">source</span> <span class="token operator">=</span> helper <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr>
<td style="border: 2px solid #000000;width: 100%">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> <span class="token keyword">text</span> <span class="token keyword">TYPE</span> <span class="token keyword">c</span> <span class="token keyword">LENGTH</span> <span class="token number">255</span><span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">(</span>xstr<span class="token punctuation">)</span> <span class="token operator">=</span> cl_abap_codepage<span class="token token-operator punctuation">=&gt;</span>convert_to<span class="token punctuation">(</span> <span class="token keyword">source</span> <span class="token operator">=</span> <span class="token keyword">CONV</span> string<span class="token punctuation">(</span> <span class="token keyword">text</span> <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>

<span class="token keyword">OR</span>

<span class="token keyword">DATA</span><span class="token punctuation">(</span>xstr<span class="token punctuation">)</span> <span class="token operator">=</span> cl_abap_codepage<span class="token token-operator punctuation">=&gt;</span>convert_to<span class="token punctuation">(</span> <span class="token keyword">source</span> <span class="token operator">=</span> <span class="token keyword">CONV</span> #<span class="token punctuation">(</span> <span class="token keyword">text</span> <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 11.0pt;font-family: 'Calibri',sans-serif">&nbsp;</span></p>
<h2><span style="background: #FEFEFF">4. Value Operator VALUE</span></h2>
<h3>I. Definition</h3>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; Variables:</strong>&nbsp;&nbsp;&nbsp; <span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333;background: white">VALUE dtype|#( )</span></p>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; Structures:</strong><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333;background: white">&nbsp; VALUE dtype|#( comp1 = a1 comp2 = a2 … )</span></p>
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; Tables: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333;background: white">VALUE dtype|#( ( … ) ( … ) … ) …</span></p>
<h3>II. Example for structures</h3>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span><span class="token punctuation">:</span>  <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> ty_columns1<span class="token punctuation">,</span> “Simple <span class="token keyword">structure</span>
           cols1 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
           cols2 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
        <span class="token keyword">END</span> <span class="token keyword">OF</span> ty_columns1<span class="token punctuation">.</span>

<span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> ty_columnns2<span class="token punctuation">,</span>  “Nested <span class="token keyword">structure</span>
          coln1 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
          coln2 <span class="token keyword">TYPE</span> ty_columns1<span class="token punctuation">,</span>
       <span class="token keyword">END</span> <span class="token keyword">OF</span> ty_columns2<span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">:</span> struc_simple <span class="token keyword">TYPE</span> ty_columns1<span class="token punctuation">,</span>
      struc_nest   <span class="token keyword">TYPE</span> ty_columns2<span class="token punctuation">.</span>

     struct_nest   <span class="token operator">=</span> <span class="token keyword">VALUE</span> t_struct<span class="token punctuation">(</span>coln1 <span class="token operator">=</span> <span class="token number">1</span>
                                    coln2<span class="token token-operator punctuation">-</span>cols1 <span class="token operator">=</span> <span class="token number">1</span>
                                    coln2<span class="token token-operator punctuation">-</span>cols2 <span class="token operator">=</span> <span class="token number">2</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
<p><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Courier New'">&nbsp;</span><span class="apple-converted-space" style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Courier New'"><strong>&nbsp;&nbsp;&nbsp;&nbsp; OR</strong></span></p>
<pre class=" language-abap"><code class=" language-abap">struct_nest   <span class="token operator">=</span> <span class="token keyword">VALUE</span> t_struct<span class="token punctuation">(</span>coln1 <span class="token operator">=</span> <span class="token number">1</span>
                               coln2 <span class="token operator">=</span> <span class="token keyword">VALUE</span> #<span class="token punctuation">(</span> cols1 <span class="token operator">=</span> <span class="token number">1</span>
                                                cols2 <span class="token operator">=</span> <span class="token number">2</span> <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
<p>&nbsp;</p>
<h3><span style="background: white">&nbsp;</span>III. Examples for internal tables</h3>
<p style="margin-bottom: .0001pt;background: #333333"><span style="font-size: 9.0pt;font-family: 'Arial',sans-serif;color: #333333">Elementary line type:</span></p>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span> t_itab <span class="token keyword">TYPE</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> <span class="token keyword">i</span> <span class="token keyword">WITH</span> <span class="token keyword">EMPTY</span> <span class="token keyword">KEY</span><span class="token punctuation">.</span>
<span class="token keyword">DATA</span>  itab   <span class="token keyword">TYPE</span> t_itab<span class="token punctuation">.</span>

itab <span class="token operator">=</span> <span class="token keyword">VALUE</span> #<span class="token punctuation">(</span> <span class="token punctuation">(</span> <span class="token punctuation">)</span> <span class="token punctuation">(</span> <span class="token number">1</span> <span class="token punctuation">)</span> <span class="token punctuation">(</span> <span class="token number">2</span> <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
<p style="margin-bottom: .0001pt;background: #333333"><span style="font-size: 9.0pt;font-family: 'Arial',sans-serif;color: #333333">Structured line type (</span><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333">RANGES</span> <span style="font-size: 9.0pt;font-family: 'Arial',sans-serif;color: #333333">table):</span></p>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> itab <span class="token keyword">TYPE</span> <span class="token keyword">RANGE</span> <span class="token keyword">OF</span> <span class="token keyword">i</span><span class="token punctuation">.</span>

itab <span class="token operator">=</span> <span class="token keyword">VALUE</span> #<span class="token punctuation">(</span> <span class="token keyword">sign</span> <span class="token operator">=</span> <span class="token string">'I'</span>  <span class="token keyword">option</span> <span class="token operator">=</span> <span class="token string">'BT'</span> <span class="token punctuation">(</span> <span class="token keyword">low</span> <span class="token operator">=</span> <span class="token number">1</span>  <span class="token keyword">high</span> <span class="token operator">=</span> <span class="token number">10</span> <span class="token punctuation">)</span>
                                          <span class="token punctuation">(</span> <span class="token keyword">low</span> <span class="token operator">=</span> <span class="token number">21</span> <span class="token keyword">high</span> <span class="token operator">=</span> <span class="token number">30</span> <span class="token punctuation">)</span>
                                          <span class="token punctuation">(</span> <span class="token keyword">low</span> <span class="token operator">=</span> <span class="token number">41</span> <span class="token keyword">high</span> <span class="token operator">=</span> <span class="token number">50</span> <span class="token punctuation">)</span>
                            <span class="token keyword">option</span> <span class="token operator">=</span> <span class="token string">'GE'</span> <span class="token punctuation">(</span> <span class="token keyword">low</span> <span class="token operator">=</span> <span class="token number">61</span> <span class="token punctuation">)</span>  <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
<p class="qtextml1" style="margin-left: 36.0pt;margin-bottom: .0001pt;background: white"><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333"><span class="qtext">&nbsp;</span></span></p>
<p>&nbsp;</p>
<h2>5. FOR operator</h2>
<h3>I. Definition</h3>
<p>FOR wa|&lt;fs&gt; IN itab [INDEX INTO idx] [cond]</p>
<h3>II. Explanation</h3>
<p>This effectively causes a loop at itab. For each loop the row read is assigned to a work area (wa) or field-symbol(&lt;fs&gt;).</p>
<p>This wa or &lt;fs&gt; is local to the expression i.e. if declared in a subrourine the variable wa or &lt;fs&gt; is a local variable of</p>
<p>that subroutine. Index like SY-TABIX in loop.</p>
<p><span style="font-size: 12.0pt;font-family: 'Calibri Light',sans-serif;color: #1f4d78">Given:&nbsp; </span></p>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> ty_ship<span class="token punctuation">,</span>
          tknum <span class="token keyword">TYPE</span> tknum<span class="token punctuation">,</span>     <span class="token eol-comment comment">"Shipment Number</span>
          <span class="token keyword">name</span>  <span class="token keyword">TYPE</span> ernam<span class="token punctuation">,</span>     <span class="token eol-comment comment">"Name of Person who Created the Object</span>
          city  <span class="token keyword">TYPE</span> ort01<span class="token punctuation">,</span>     <span class="token eol-comment comment">"Starting city</span>
          route <span class="token keyword">TYPE</span> route<span class="token punctuation">,</span>     <span class="token eol-comment comment">"Shipment route</span>
<span class="token keyword">END</span> <span class="token keyword">OF</span> ty_ship<span class="token punctuation">.</span>
<span class="token keyword">TYPES</span><span class="token punctuation">:</span> ty_ships <span class="token keyword">TYPE</span> <span class="token keyword">SORTED</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> ty_ship <span class="token keyword">WITH</span> <span class="token keyword">UNIQUE</span> <span class="token keyword">KEY</span> tknum<span class="token punctuation">.</span>
<span class="token keyword">TYPES</span><span class="token punctuation">:</span> ty_citys <span class="token keyword">TYPE</span> <span class="token keyword">STANDARD</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> ort01 <span class="token keyword">WITH</span> <span class="token keyword">EMPTY</span> <span class="token keyword">KEY</span><span class="token punctuation">.</span></code></pre>
<p><span style="font-size: 10.0pt;font-family: 'Courier New';color: black;background: white">GT_SHIPS</span> <span style="font-size: 10.0pt;font-family: 'Courier New';color: blue;background: white">type</span> <span style="font-size: 10.0pt;font-family: 'Courier New';color: black;background: white">ty_ships. -&gt; has been populated as follows:<br>
</span></p>
<table class="jiveBorder" style="border: 1px solid #000000;width: 58%" border="1">
<thead>
<tr>
<th style="border: 1px solid #000000;padding: 2px;color: #ffffff;background-color: #6690bc;text-align: center" valign="middle">Row</th>
<th style="border: 1px solid #000000;padding: 2px;color: #ffffff;background-color: #6690bc;text-align: center" valign="middle"><strong>TKNUM[C(10)]</strong></th>
<th style="border: 1px solid #000000;padding: 2px;color: #ffffff;background-color: #6690bc;text-align: center" valign="middle"><strong>Name[C(12)]</strong></th>
<th style="border: 1px solid #000000;padding: 2px;color: #ffffff;background-color: #6690bc;text-align: center" valign="middle">City<span style="color: #ffffff;font-size: 13.3333px;text-align: center"><strong>[C(25)]</strong></span></th>
<th style="border: 1px solid #000000;padding: 2px;color: #ffffff;background-color: #6690bc;text-align: center" valign="middle">Route[C(<span style="font-size: 13.3333px">6)]</span></th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 1px solid #000000;padding: 2px">1</td>
<td style="border: 1px solid #000000;padding: 2px">001</td>
<td style="border: 1px solid #000000;padding: 2px">John</td>
<td style="border: 1px solid #000000;padding: 2px">Melbourne</td>
<td style="border: 1px solid #000000;padding: 2px">R0001</td>
</tr>
<tr>
<td style="border: 1px solid #000000;padding: 2px">2</td>
<td style="border: 1px solid #000000;padding: 2px">002</td>
<td style="border: 1px solid #000000;padding: 2px">Gavin</td>
<td style="border: 1px solid #000000;padding: 2px">Sydney</td>
<td style="border: 1px solid #000000;padding: 2px">R0003</td>
</tr>
<tr>
<td style="border: 1px solid #000000;padding: 2px">3</td>
<td style="border: 1px solid #000000;padding: 2px">003</td>
<td style="border: 1px solid #000000;padding: 2px">Lucy</td>
<td style="border: 1px solid #000000;padding: 2px">Adelaide</td>
<td style="border: 1px solid #000000;padding: 2px">R0001</td>
</tr>
<tr>
<td style="border: 1px solid #000000;padding: 2px">4</td>
<td style="border: 1px solid #000000;padding: 2px">004</td>
<td style="border: 1px solid #000000;padding: 2px">Elaine</td>
<td style="border: 1px solid #000000;padding: 2px">Perth</td>
<td style="border: 1px solid #000000;padding: 2px">R0003</td>
</tr>
</tbody>
</table>
<h3>III. Example 1</h3>
<p><span style="font-size: 10.0pt;font-family: 'Courier New';color: purple;background: white">Populate internal table GT_CITYS with the cities from GT_SHIPS.</span></p>
<table style="border: 4px solid #000000;width: 640px;height: 213px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">:</span> gt_citys <span class="token keyword">TYPE</span> ty_citys<span class="token punctuation">,</span>
      gs_ship  <span class="token keyword">TYPE</span> ty_ship<span class="token punctuation">,</span>
      gs_city  <span class="token keyword">TYPE</span> ort01<span class="token punctuation">.</span>

<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> gt_ships <span class="token keyword">INTO</span> gs_ship<span class="token punctuation">.</span>
  gs_city <span class="token operator">=</span>  gs_ship<span class="token token-operator punctuation">-</span>city<span class="token punctuation">.</span>
  <span class="token keyword">APPEND</span> gs_city <span class="token keyword">TO</span> gt_citys<span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>gt_citys<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">VALUE</span> ty_citys<span class="token punctuation">(</span> <span class="token keyword">FOR</span> ls_ship <span class="token keyword">IN</span> gt_ships <span class="token punctuation">(</span> ls_ship<span class="token token-operator punctuation">-</span>city <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h3></h3>
<h3>IV. Example 2</h3>
<p><span style="font-size: 10.0pt;font-family: 'Courier New';color: purple;background: white">Populate internal table GT_CITYS with the cities from GT_SHIPS where the route is R0001.</span></p>
<table style="border: 4px solid #000000;height: 243px;width: 650px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">:</span> gt_citys <span class="token keyword">TYPE</span> ty_citys<span class="token punctuation">,</span>
      gs_ship  <span class="token keyword">TYPE</span> ty_ship<span class="token punctuation">,</span>
      gs_city  <span class="token keyword">TYPE</span> ort01<span class="token punctuation">.</span>

<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> gt_ships <span class="token keyword">INTO</span> gs_ship <span class="token keyword">WHERE</span> route <span class="token operator">=</span> <span class="token string">'R0001'</span><span class="token punctuation">.</span>
  gs_city <span class="token operator">=</span>  gs_ship<span class="token token-operator punctuation">-</span>city<span class="token punctuation">.</span>
  <span class="token keyword">APPEND</span> gs_city <span class="token keyword">TO</span> gt_citys<span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>gt_citys<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">VALUE</span> ty_citys<span class="token punctuation">(</span> <span class="token keyword">FOR</span> ls_ship <span class="token keyword">IN</span> gt_ships
                               <span class="token keyword">WHERE</span> <span class="token punctuation">(</span> route <span class="token operator">=</span> <span class="token string">'R0001'</span> <span class="token punctuation">)</span> <span class="token punctuation">(</span> ls_ship<span class="token token-operator punctuation">-</span>city <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 16px;font-weight: bold"><span style="color: #1f4d78;font-size: 12.0pt;font-family: 'Calibri Light',sans-serif"><strong>Note:</strong></span><span style="font-size: 12.0pt;font-family: 'Calibri Light',sans-serif;color: #1f4d78"> ls_ship does not appear to have been declared but it is declared implicitly.</span></span></p>
<p><span style="font-size: 16px;font-weight: bold">&nbsp;</span></p>
<p><span style="font-size: 16px;font-weight: bold">V. FOR with THEN and UNTIL|WHILE </span></p>
<p><span style="font-size: 10.0pt;font-family: 'Courier New';color: purple;background: white">FOR i = … [THEN expr] UNTIL|WHILE log_exp</span></p>
<p><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333;background: white">Populate an internal table as follows:</span></p>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span><span class="token punctuation">:</span>
  <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> ty_line<span class="token punctuation">,</span>
    col1 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
    col2 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
    col3 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
  <span class="token keyword">END</span> <span class="token keyword">OF</span> ty_line<span class="token punctuation">,</span>
  ty_tab <span class="token keyword">TYPE</span> <span class="token keyword">STANDARD</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> ty_line <span class="token keyword">WITH</span> <span class="token keyword">EMPTY</span> <span class="token keyword">KEY</span><span class="token punctuation">.</span></code></pre>
<table style="border: 4px solid #000000;width: 609px;height: 307px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">:</span> gt_itab <span class="token keyword">TYPE</span> ty_tab<span class="token punctuation">,</span>
      j       <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">.</span>
<span class="token keyword">FIELD-SYMBOLS</span> &lt;ls_tab&gt; <span class="token keyword">TYPE</span> ty_line<span class="token punctuation">.</span>j= <span class="token number">1</span><span class="token punctuation">.</span>

<span class="token keyword">DO</span><span class="token punctuation">.</span>
  j <span class="token operator">=</span> j <span class="token operator">+</span> <span class="token number">10</span><span class="token punctuation">.</span>
  <span class="token keyword">IF</span> j <span class="token operator">&gt;</span> <span class="token number">40</span><span class="token punctuation">.</span> <span class="token keyword">EXIT</span><span class="token punctuation">.</span> <span class="token keyword">ENDIF</span><span class="token punctuation">.</span>
  <span class="token keyword">APPEND</span> <span class="token keyword">INITIAL</span> <span class="token keyword">LINE</span> <span class="token keyword">TO</span> gt_itab <span class="token keyword">ASSIGNING</span> &lt;ls_tab&gt;<span class="token punctuation">.</span>
  &lt;ls_tab&gt;-col1 <span class="token operator">=</span> j<span class="token punctuation">.</span>
  &lt;ls_tab&gt;-col2 <span class="token operator">=</span> j <span class="token operator">+</span> <span class="token number">1</span><span class="token punctuation">.</span>
  &lt;ls_tab&gt;-col3 <span class="token operator">=</span> j <span class="token operator">+</span> <span class="token number">2</span><span class="token punctuation">.</span>
<span class="token keyword">ENDDO</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>gt_itab<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">VALUE</span> ty_tab<span class="token punctuation">(</span> <span class="token keyword">FOR</span> j <span class="token operator">=</span> <span class="token number">11</span> <span class="token keyword">THEN</span> j <span class="token operator">+</span> <span class="token number">10</span> <span class="token keyword">UNTIL</span> j <span class="token operator">&gt;</span> <span class="token number">40</span>
                            <span class="token punctuation">(</span> col1 <span class="token operator">=</span> j col2 <span class="token operator">=</span> j <span class="token operator">+</span> <span class="token number">1</span> col3 <span class="token operator">=</span> j <span class="token operator">+</span> <span class="token number">2</span>  <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 13.0pt;font-family: 'Calibri Light',sans-serif;color: #2e74b5">&nbsp;</span></p>
<h2>6. Reduction operator REDUCE</h2>
<h3>I. Definition</h3>
<p style="margin-bottom: .0001pt">… REDUCE type(</p>
<p style="margin-bottom: .0001pt">INIT result = start_value</p>
<p style="margin-bottom: .0001pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; …</p>
<p style="margin-bottom: .0001pt">FOR for_exp1</p>
<p style="margin-bottom: .0001pt">FOR for_exp2</p>
<p style="margin-bottom: .0001pt">…</p>
<p style="margin-bottom: .0001pt">NEXT …</p>
<p style="margin-bottom: .0001pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; result = iterated_value</p>
<p style="margin-bottom: .0001pt">… )</p>
<h3>II. Note</h3>
<p style="margin-bottom: .0001pt;background: #333333">&nbsp;&nbsp;&nbsp;&nbsp; While VALUE and NEW expressions can include FOR expressions, REDUCE must include at least one FOR expression. You can use all kinds&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of FOR expressions in REDUCE:</p>
<ul style="list-style-type: disc">
<li>with IN for iterating internal tables</li>
<li>with UNTIL or WHILE for conditional iterations</li>
</ul>
<h3></h3>
<h3>III. Example 1</h3>
<p>Count lines of table that meet a condition (field F1 contains “XYZ”).</p>
<table class="TableGrid1" style="border: 4px solid #000000;width: 496px;height: 165px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">:</span> lv_lines <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">.</span>

<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> gt_itab <span class="token keyword">INTO</span> ls_itab <span class="token keyword">where</span> F1 <span class="token operator">=</span> ‘XYZ’<span class="token punctuation">.</span>
  lv_lines <span class="token operator">=</span> lv_lines <span class="token operator">+</span> <span class="token number">1</span><span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>lv_lines<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">REDUCE</span> <span class="token keyword">i</span><span class="token punctuation">(</span> <span class="token keyword">INIT</span> <span class="token keyword">x</span> <span class="token operator">=</span> <span class="token number">0</span> <span class="token keyword">FOR</span> wa <span class="token keyword">IN</span> gt_itab
                    <span class="token keyword">WHERE</span><span class="token punctuation">(</span> F1 <span class="token operator">=</span> ‘XYZ’ <span class="token punctuation">)</span> <span class="token keyword">NEXT</span> <span class="token keyword">x</span> <span class="token operator">=</span> <span class="token keyword">x</span> <span class="token operator">+</span> <span class="token number">1</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h3>IV. Example 2</h3>
<p>Sum the values 1 to 10 stored in the column of a table defined as follows</p>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> gt_itab <span class="token keyword">TYPE</span> <span class="token keyword">STANDARD</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> <span class="token keyword">i</span> <span class="token keyword">WITH</span> <span class="token keyword">EMPTY</span> <span class="token keyword">KEY</span><span class="token punctuation">.</span>
gt_itab <span class="token operator">=</span> <span class="token keyword">VALUE</span> #<span class="token punctuation">(</span> <span class="token keyword">FOR</span> j <span class="token operator">=</span> <span class="token number">1</span> <span class="token keyword">WHILE</span> j <span class="token operator">&lt;=</span> <span class="token number">10</span> <span class="token punctuation">(</span> j <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
<table style="border: 4px solid #000000;width: 580px;height: 171px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;vertical-align: baseline;font-family: arial, helvetica, sans-serif;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">:</span> lv_line <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
      lv_sum  <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">.</span>

<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> gt_itab <span class="token keyword">INTO</span> lv_line<span class="token punctuation">.</span>
  lv_sum <span class="token operator">=</span> lv_sum <span class="token operator">+</span> lv_line<span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>lv_sum<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">REDUCE</span> <span class="token keyword">i</span><span class="token punctuation">(</span> <span class="token keyword">INIT</span> <span class="token keyword">x</span> <span class="token operator">=</span> <span class="token number">0</span> <span class="token keyword">FOR</span> wa <span class="token keyword">IN</span> itab <span class="token keyword">NEXT</span> <span class="token keyword">x</span> <span class="token operator">=</span> <span class="token keyword">x</span> <span class="token operator">+</span> wa <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h3></h3>
<h3>V. Example 3</h3>
<p>Using a class reference – works because “write” method returns reference to instance object</p>
<table style="border: 4px solid #000000;width: 536px;height: 171px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;padding: 0px;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span> outref <span class="token keyword">TYPE</span> <span class="token keyword">REF</span> <span class="token keyword">TO</span> if_demo_output<span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">(</span>output<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">REDUCE</span> outref<span class="token punctuation">(</span> <span class="token keyword">INIT</span> <span class="token keyword">out</span>  <span class="token operator">=</span> cl_demo_output<span class="token token-operator punctuation">=&gt;</span>new<span class="token punctuation">(</span> <span class="token punctuation">)</span>
                              <span class="token keyword">text</span> <span class="token operator">=</span> <span class="token string">`Count up:`</span>
                              <span class="token keyword">FOR</span> n <span class="token operator">=</span> <span class="token number">1</span> <span class="token keyword">UNTIL</span> n <span class="token operator">&gt;</span> <span class="token number">11</span>
                              <span class="token keyword">NEXT</span> <span class="token keyword">out</span> <span class="token operator">=</span> <span class="token keyword">out</span>-&gt;write<span class="token punctuation">(</span> <span class="token keyword">text</span> <span class="token punctuation">)</span>
                              <span class="token keyword">text</span> <span class="token operator">=</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> n <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">output</span>-&gt;display<span class="token punctuation">(</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h2></h2>
<p>&nbsp;</p>
<h2>7. Conditional operators COND and SWITCH</h2>
<h3>I. Definition</h3>
<p style="margin-bottom: .0001pt"><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333">… COND dtype|#( WHEN log_exp1 THEN result1 </span><span style="font-size: 9.0pt;font-family: 'inherit',serif;color: #333333"><br>
</span><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333"> [ WHEN log_exp2 THEN result2 ] </span><span style="font-size: 9.0pt;font-family: 'inherit',serif;color: #333333"><br>
</span><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333"> … </span><span style="font-size: 9.0pt;font-family: 'inherit',serif;color: #333333"><br>
</span><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333"> [ ELSE resultn ] ) …</span></p>
<p style="margin-bottom: .0001pt"><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333">… SWITCH dtype|#( operand </span><span style="font-size: 9.0pt;font-family: 'inherit',serif;color: #333333"><br>
</span><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333"> WHEN const1 THEN result1 </span><span style="font-size: 9.0pt;font-family: 'inherit',serif;color: #333333"><br>
</span><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333"> [ WHEN const2 THEN result2 ] </span><span style="font-size: 9.0pt;font-family: 'inherit',serif;color: #333333"><br>
</span><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333"> … </span><span style="font-size: 9.0pt;font-family: 'inherit',serif;color: #333333"><br>
</span><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333"> [ ELSE resultn ] ) …</span></p>
<h3>II. Example for COND</h3>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>time<span class="token punctuation">)</span> <span class="token operator">=</span>  
  <span class="token keyword">COND</span> string<span class="token punctuation">(</span>
    <span class="token keyword">WHEN</span> sy<span class="token token-operator punctuation">-</span>timlo <span class="token operator">&lt;</span> <span class="token string">'120000'</span> <span class="token keyword">THEN</span>
      <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> sy<span class="token token-operator punctuation">-</span>timlo <span class="token keyword">TIME</span> <span class="token operator">=</span> <span class="token keyword">ISO</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"> AM</span><span class="token token-operator punctuation">|</span>
    <span class="token keyword">WHEN</span> sy<span class="token token-operator punctuation">-</span>timlo <span class="token operator">&gt;</span> <span class="token string">'120000'</span> <span class="token keyword">THEN</span>
      <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> <span class="token keyword">CONV</span> t<span class="token punctuation">(</span> sy<span class="token token-operator punctuation">-</span>timlo <span class="token operator">-</span> <span class="token number">12</span> <span class="token operator">*</span> <span class="token number">3600</span> <span class="token punctuation">)</span>
       <span class="token keyword">TIME</span> <span class="token operator">=</span> <span class="token keyword">ISO</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"> PM</span><span class="token token-operator punctuation">|</span>
    <span class="token keyword">WHEN</span> sy<span class="token token-operator punctuation">-</span>timlo <span class="token operator">=</span> <span class="token string">'120000'</span> <span class="token keyword">THEN</span>
      <span class="token token-operator punctuation">|</span><span class="token string-template string">High Noon</span><span class="token token-operator punctuation">|</span>
    <span class="token keyword">ELSE</span>
      <span class="token keyword">THROW</span> cx_cant_be<span class="token punctuation">(</span> <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
<h3>III. Example for SWITCH</h3>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>text<span class="token punctuation">)</span> <span class="token operator">=</span>
<span class="token keyword">NEW</span> <span class="token keyword">class</span><span class="token punctuation">(</span> <span class="token punctuation">)</span>-&gt;meth<span class="token punctuation">(</span>
                     <span class="token keyword">SWITCH</span> #<span class="token punctuation">(</span> sy<span class="token token-operator punctuation">-</span>langu
                              <span class="token keyword">WHEN</span> <span class="token string">'D'</span> <span class="token keyword">THEN</span> <span class="token string">`DE`</span>
                              <span class="token keyword">WHEN</span> <span class="token string">'E'</span> <span class="token keyword">THEN</span> <span class="token string">`EN`</span>
                              <span class="token keyword">ELSE</span> <span class="token keyword">THROW</span> cx_langu_not_supported<span class="token punctuation">(</span> <span class="token punctuation">)</span> <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
<p><span style="font-size: 9.0pt;font-family: 'Courier New';color: #333333">&nbsp;</span></p>
<h2><span style="background: #FEFEFF">8. Corresponding Operator</span></h2>
<h3>I. Definition</h3>
<h2><span style="color: #333333;font-size: 10pt;font-family: 'Courier New'">… CORRESPONDING type( [BASE ( base )] struct|itab [<span style="font-family: 'Calibri Light', sans-serif">mapping|except</span>] )</span></h2>
<h3></h3>
<h3>II. Example Code</h3>
<table style="border: 4px solid #000000;width: 640px;height: 381px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr style="height: 18px">
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> line1<span class="token punctuation">,</span> col1 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span> col2 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span> <span class="token keyword">END</span> <span class="token keyword">OF</span> line1<span class="token punctuation">.</span>
<span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> line2<span class="token punctuation">,</span> col1 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span> col2 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span> col3 <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span> <span class="token keyword">END</span> <span class="token keyword">OF</span> line2<span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">(</span>ls_line1<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">VALUE</span> line1<span class="token punctuation">(</span> col1 <span class="token operator">=</span> <span class="token number">1</span> col2 <span class="token operator">=</span> <span class="token number">2</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token string">'ls_line1 ='</span> <span class="token punctuation">,</span><span class="token number">15</span> ls_line1<span class="token token-operator punctuation">-</span>col1<span class="token punctuation">,</span> ls_line1<span class="token token-operator punctuation">-</span>col2<span class="token punctuation">.</span>
<span class="token keyword">DATA</span><span class="token punctuation">(</span>ls_line2<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">VALUE</span> line2<span class="token punctuation">(</span> col1 <span class="token operator">=</span> <span class="token number">4</span> col2 <span class="token operator">=</span> <span class="token number">5</span> col3 <span class="token operator">=</span> <span class="token number">6</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token string">'ls_line2 ='</span> <span class="token punctuation">,</span><span class="token number">15</span> ls_line2<span class="token token-operator punctuation">-</span>col1<span class="token punctuation">,</span> ls_line2<span class="token token-operator punctuation">-</span>col2<span class="token punctuation">,</span> ls_line2<span class="token token-operator punctuation">-</span>col3<span class="token punctuation">.</span>
<span class="token keyword">SKIP</span> <span class="token number">2</span><span class="token punctuation">.</span>

ls_line2 <span class="token operator">=</span> <span class="token keyword">CORRESPONDING</span> #<span class="token punctuation">(</span> ls_line1 <span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token string">'ls_line2 = CORRESPONDING #( ls_line1 )'</span>
     <span class="token punctuation">,</span><span class="token number">70</span> <span class="token string">'Result is ls_line2 = '</span>     
     <span class="token punctuation">,</span>ls_line2<span class="token token-operator punctuation">-</span>col1<span class="token punctuation">,</span> ls_line2<span class="token token-operator punctuation">-</span>col2<span class="token punctuation">,</span> ls_line2<span class="token token-operator punctuation">-</span>col3<span class="token punctuation">.</span>
<span class="token keyword">SKIP</span><span class="token punctuation">.</span>

ls_line2 <span class="token operator">=</span> <span class="token keyword">VALUE</span> line2<span class="token punctuation">(</span> col1 <span class="token operator">=</span> <span class="token number">4</span> col2 <span class="token operator">=</span> <span class="token number">5</span> col3 <span class="token operator">=</span> <span class="token number">6</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>   <span class="token eol-comment comment">"Restore ls_line2</span>
ls_line2 <span class="token operator">=</span> <span class="token keyword">CORRESPONDING</span> #<span class="token punctuation">(</span> <span class="token keyword">BASE</span> <span class="token punctuation">(</span> ls_line2 <span class="token punctuation">)</span> ls_line1 <span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token string">'ls_line2 = CORRESPONDING #( BASE ( ls_line2 ) ls_line1 )'</span>
        <span class="token punctuation">,</span> <span class="token number">70</span> <span class="token string">'Result is ls_line2 = '</span><span class="token punctuation">,</span> ls_line2<span class="token token-operator punctuation">-</span>col1
        <span class="token punctuation">,</span> ls_line2<span class="token token-operator punctuation">-</span>col2<span class="token punctuation">,</span> ls_line2<span class="token token-operator punctuation">-</span>col3<span class="token punctuation">.</span>
<span class="token keyword">SKIP</span><span class="token punctuation">.</span>

ls_line2 <span class="token operator">=</span> <span class="token keyword">VALUE</span> line2<span class="token punctuation">(</span> col1 <span class="token operator">=</span> <span class="token number">4</span> col2 <span class="token operator">=</span> <span class="token number">5</span> col3 <span class="token operator">=</span> <span class="token number">6</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>   <span class="token eol-comment comment">"Restore ls_line2</span>
<span class="token keyword">DATA</span><span class="token punctuation">(</span>ls_line3<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">CORRESPONDING</span> line2<span class="token punctuation">(</span> <span class="token keyword">BASE</span> <span class="token punctuation">(</span> ls_line2 <span class="token punctuation">)</span> ls_line1 <span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token string">'DATA(ls_line3) = CORRESPONDING line2( BASE ( ls_line2 ) ls_line1 )'</span>
         <span class="token punctuation">,</span> <span class="token number">70</span> <span class="token string">'Result is ls_line3 = '</span> <span class="token punctuation">,</span> ls_line3<span class="token token-operator punctuation">-</span>col1
         <span class="token punctuation">,</span> ls_line3<span class="token token-operator punctuation">-</span>col2<span class="token punctuation">,</span> ls_line3<span class="token token-operator punctuation">-</span>col3<span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h3></h3>
<h3>III. Output</h3>
<p><a href="/wp-content/uploads/2015/10/image001_906951.jpg"><img class="jive-image jive-image-thumbnail" src="/wp-content/uploads/2015/10/image001_906951.jpg" alt="/wp-content/uploads/2015/10/image001_906951.jpg" width="620"></a></p>
<h3>IV. Explanation</h3>
<p>Given structures ls_line1 &amp; ls_line2 defined and populated as above.</p>
<table style="font-size: 10pt;border: 4px solid #000000;width: 640px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr style="height: 22px">
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff;width: 2%"></th>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff;width: 44%">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;font-size: 9.0pt;background: white;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;font-size: 9.0pt;background: white;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr style="height: 44px">
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt" width="284" valign="top"><strong>1</strong></td>
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;padding: 0px 5.4pt" width="284" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">CLEAR</span> ls_line2<span class="token punctuation">.</span>
<span class="token keyword">MOVE-CORRESPONDING</span> ls_line1 
                <span class="token keyword">TO</span> ls_line2<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt" width="766" valign="top">
<pre class=" language-abap"><code class=" language-abap">ls_line2 <span class="token operator">=</span> <span class="token keyword">CORRESPONDING</span> #<span class="token punctuation">(</span> ls_line1 <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 54px">
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt" width="284" valign="top"><strong>2</strong></td>
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt" width="284" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">MOVE-CORRESPONDING</span> ls_line1 
                <span class="token keyword">TO</span> ls_line2<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt" width="766" valign="top">
<pre class=" language-abap"><code class=" language-abap">ls_line2 <span class="token operator">=</span> <span class="token keyword">CORRESPONDING</span> #
        <span class="token punctuation">(</span> <span class="token keyword">BASE</span> <span class="token punctuation">(</span> ls_line2 <span class="token punctuation">)</span> ls_line1 <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 68px">
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt" width="284" valign="top"><strong>3</strong></td>
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt" width="284" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">:</span> ls_line3 <span class="token keyword">like</span> ls_line2<span class="token punctuation">.</span>

ls_line3 <span class="token operator">=</span> ls_line2<span class="token punctuation">.</span>
<span class="token keyword">MOVE-CORRESPONDING</span> ls_line1 
                <span class="token keyword">TO</span> ls_line2<span class="token punctuation">.</span></code></pre>
</td>
<td style="border: 4px solid #000000;vertical-align: top;text-align: left;color: #000000;padding: 0px 5.4pt" width="766" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>ls_line3<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">CORRESPONDING</span> line2
        <span class="token punctuation">(</span> <span class="token keyword">BASE</span> <span class="token punctuation">(</span> ls_line2 <span class="token punctuation">)</span> ls_line1 <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<ol style="list-style-type: decimal">
<li><span style="color: #575757;font-family: Arial, sans-serif;font-size: 9.5pt">&nbsp; The contents of ls_line1 are moved to ls_line2 where </span><span style="color: #575757;font-size: 9.5pt;font-family: 'Arial',sans-serif">there is a matching column name. Where there is no</span></li>
</ol>
<p><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif;color: #1f497d"><span style="color: #575757">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; match the column of ls_line2 </span><span style="color: #575757"><strong>is initialised.</strong></span></span></p>
<p><span style="font-size: 9.0pt;font-family: 'Courier New';color: #4da619;background: white"><span style="color: #4da619;font-size: 9pt">&nbsp; </span><span style="color: #000000;font-size: 10pt">2.</span> </span><span style="font-size: 9.5pt;font-family: Arial, sans-serif;color: #575757">This uses the existing contents </span><span style="color: #575757;font-size: 9.5pt;font-family: 'Arial',sans-serif">of ls_line2 as a base and overwrites the matching columns from ls_line1.</span></p>
<p><span style="font-family: Arial, sans-serif;font-size: 9.5pt"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is exactly like MOVE-CORRESPONDING.</strong></span></p>
<p><span style="font-size: 9.0pt;font-family: 'Courier New';color: #4da619;background: white"><span style="color: #000000;font-size: 10pt">&nbsp; 3.</span> </span><span style="font-size: 9.5pt;font-family: Arial, sans-serif;color: #575757">This creates a third and new </span><span style="color: #575757;font-size: 9.5pt;font-family: 'Arial',sans-serif">structure (ls_line3) which is based on ls_line2 but overwritten by matching </span></p>
<p><span style="color: #575757;font-size: 9.5pt;font-family: 'Arial',sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; columns of ls_line1.</span></p>
<h3>V. Additions MAPPING and EXCEPT</h3>
<p>MAPPING allows you to map fields with non-identically named components to qualify for the data transfer.</p>
<p><span style="color: black;background: #FEFEFF;font-size: 9.5pt;font-family: 'Courier New'"><strong>&nbsp;&nbsp; … MAPPING&nbsp; t1 = s1 t2 = s2</strong></span></p>
<p><span style="color: black;background: #FEFEFF;font-size: 9.5pt;font-family: 'Courier New'"><strong>&nbsp;</strong></span></p>
<p>EXCEPT allows you to list fields that must be excluded from the data transfer</p>
<p><span style="color: black;background: #FEFEFF;font-size: 9.5pt;font-family: 'Courier New'"><strong>&nbsp;&nbsp; … EXCEPT&nbsp; {t1 t2 …}</strong></span></p>
<h2></h2>
<p>&nbsp;</p>
<h2><span style="background: #FEFEFF">9. Strings</span></h2>
<h3>I. String Templates</h3>
<p style="margin-bottom: .0001pt"><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif;color: black;background: #FEFEFF">A string template is enclosed by two characters “</span><span class="qtext" style="color: black;background: #FEFEFF;font-size: 9.5pt;font-family: 'Courier New'"><strong>|</strong></span><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif;color: black;background: #FEFEFF">” and creates a character string.</span></p>
<p style="margin-bottom: .0001pt"><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif;color: black;background: #FEFEFF">Literal text consists of all characters that are not in braces {}. The braces can contain:</span></p>
<ul>
<li><span style="color: #505050;font-size: 9.5pt;font-family: 'Arial',sans-serif">data objects</span><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif">,</span></li>
</ul>
<ul>
<li><span style="color: #505050;font-size: 9.5pt;font-family: 'Arial',sans-serif">calculation expressions</span><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif">,</span></li>
</ul>
<ul>
<li><span style="color: #505050;font-size: 9.5pt;font-family: 'Arial',sans-serif">constructor expressions</span><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif">,</span></li>
</ul>
<ul>
<li><span style="color: #505050;font-size: 9.5pt;font-family: 'Arial',sans-serif">table expressions</span><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif">,</span></li>
</ul>
<ul>
<li><span style="color: #505050;font-size: 9.5pt;font-family: 'Arial',sans-serif">predefined functions</span><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif">, or</span></li>
</ul>
<ul>
<li><span style="color: #505050;font-size: 9.5pt;font-family: 'Arial',sans-serif">functional methods</span> <span style="font-size: 9.5pt;font-family: 'Arial',sans-serif">and </span><span style="color: #505050;font-size: 9.5pt;font-family: 'Arial',sans-serif">method chainings</span></li>
</ul>
<table style="border: 4px solid #000000;width: 640px;height: 295px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> itab <span class="token keyword">TYPE</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> scarr<span class="token punctuation">.</span>
<span class="token keyword">SELECT</span> <span class="token operator">*</span> <span class="token keyword">FROM</span> scarr <span class="token keyword">INTO</span> <span class="token keyword">TABLE</span> itab<span class="token punctuation">.</span>

<span class="token keyword">DATA</span> wa <span class="token keyword">LIKE</span> <span class="token keyword">LINE</span> <span class="token keyword">OF</span> itab<span class="token punctuation">.</span>
<span class="token keyword">READ</span> <span class="token keyword">TABLE</span> itab <span class="token keyword">WITH</span> <span class="token keyword">KEY</span> carrid <span class="token operator">=</span> <span class="token string">'LH'</span> <span class="token keyword">INTO</span> wa<span class="token punctuation">.</span>

<span class="token keyword">DATA</span> <span class="token keyword">output</span> <span class="token keyword">TYPE</span> string<span class="token punctuation">.</span>
<span class="token keyword">CONCATENATE</span> <span class="token string">'Carrier:'</span> wa<span class="token token-operator punctuation">-</span>carrname <span class="token keyword">INTO</span> <span class="token keyword">output</span> <span class="token keyword">SEPARATED</span> <span class="token keyword">BY</span> <span class="token keyword">space</span><span class="token punctuation">.</span>

cl_demo_output<span class="token token-operator punctuation">=&gt;</span>display<span class="token punctuation">(</span> <span class="token keyword">output</span> <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">SELECT</span> <span class="token operator">*</span> <span class="token keyword">FROM</span> scarr <span class="token keyword">INTO</span> <span class="token keyword">TABLE</span> @DATA<span class="token punctuation">(</span>lt_scarr<span class="token punctuation">)</span><span class="token punctuation">.</span>
cl_demo_output<span class="token token-operator punctuation">=&gt;</span>display<span class="token punctuation">(</span> <span class="token token-operator punctuation">|</span><span class="token string-template string">Carrier: </span><span class="token token-operator punctuation">{</span> lt_scarr[ carrid <span class="token operator">=</span> <span class="token string">'LH'</span> ]-carrname <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span>  <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h3>II. Concatenation</h3>
<table style="border: 4px solid #000000;width: 531px;height: 116px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span> lv_output <span class="token keyword">TYPE</span> string<span class="token punctuation">.</span>
<span class="token keyword">CONCATENATE</span> <span class="token string">'Hello'</span> <span class="token string">'world'</span> <span class="token keyword">INTO</span> lv_output <span class="token keyword">SEPARATED</span> <span class="token keyword">BY</span> <span class="token keyword">space</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr>
<td style="border: 4px solid #000000">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>lv_out<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token token-operator punctuation">|</span><span class="token string-template string">Hello</span><span class="token token-operator punctuation">|</span><span class="token string-template string"> &amp; </span><span class="token token-operator punctuation">|</span><span class="token string-template string"> </span><span class="token token-operator punctuation">|</span><span class="token string-template string"> &amp; </span><span class="token token-operator punctuation">|</span><span class="token string-template string">world</span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h3>III. Width/Alignment/Padding</h3>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> <span class="token string">'Left'</span>     <span class="token keyword">WIDTH</span> <span class="token operator">=</span> <span class="token number">20</span> <span class="token keyword">ALIGN</span> <span class="token operator">=</span> <span class="token keyword">LEFT</span>   <span class="token keyword">PAD</span> <span class="token operator">=</span> <span class="token string">'0'</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> <span class="token string">'Centre'</span>   <span class="token keyword">WIDTH</span> <span class="token operator">=</span> <span class="token number">20</span> <span class="token keyword">ALIGN</span> <span class="token operator">=</span> <span class="token keyword">CENTER</span> <span class="token keyword">PAD</span> <span class="token operator">=</span> <span class="token string">'0'</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> <span class="token string">'Right'</span>    <span class="token keyword">WIDTH</span> <span class="token operator">=</span> <span class="token number">20</span> <span class="token keyword">ALIGN</span> <span class="token operator">=</span> <span class="token keyword">RIGHT</span>  <span class="token keyword">PAD</span> <span class="token operator">=</span> <span class="token string">'0'</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span></code></pre>
<h3>IV. Case</h3>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> <span class="token string">'Text'</span> <span class="token keyword">CASE</span> <span class="token operator">=</span> <span class="token punctuation">(</span>cl_abap_format<span class="token token-operator punctuation">=&gt;</span>c_raw<span class="token punctuation">)</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> <span class="token string">'Text'</span> <span class="token keyword">CASE</span> <span class="token operator">=</span> <span class="token punctuation">(</span>cl_abap_format<span class="token token-operator punctuation">=&gt;</span>c_upper<span class="token punctuation">)</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> <span class="token string">'Text'</span> <span class="token keyword">CASE</span> <span class="token operator">=</span> <span class="token punctuation">(</span>cl_abap_format<span class="token token-operator punctuation">=&gt;</span>c_lower<span class="token punctuation">)</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span></code></pre>
<h3>V. ALPHA conversion</h3>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>lv_vbeln<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token string">'0000012345'</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> lv_vbeln  <span class="token keyword">ALPHA</span> <span class="token operator">=</span> <span class="token keyword">OUT</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>  “or <span class="token keyword">ALPHA</span> <span class="token operator">=</span> <span class="token keyword">IN</span> <span class="token keyword">to</span> go <span class="token keyword">in</span> <span class="token keyword">other</span> direction</code></pre>
<h3>VI. Date conversion</h3>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> pa_date <span class="token keyword">DATE</span> <span class="token operator">=</span> <span class="token keyword">ISO</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>           “Date <span class="token keyword">Format</span> YYYY<span class="token token-operator punctuation">-</span>MM<span class="token token-operator punctuation">-</span>DD
<span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> pa_date <span class="token keyword">DATE</span> <span class="token operator">=</span> <span class="token keyword">User</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>          “As per <span class="token keyword">user</span> settings
<span class="token keyword">WRITE</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string"></span><span class="token token-operator punctuation">{</span> pa_date <span class="token keyword">DATE</span> <span class="token operator">=</span> <span class="token keyword">Environment</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>   “As per <span class="token keyword">Environment</span></code></pre>
<h2></h2>
<p>&nbsp;</p>
<p><span style="background: #fefeff;font-size: 15pt;font-family: Arial, sans-serif"><strong>10. Loop at Group By</strong></span></p>
<p><span style="font-size: 12pt;font-family: Arial, sans-serif"><strong>I. Definition</strong></span></p>
<p style="margin-bottom: 0.0001pt"><strong><span style="font-size: 9.5pt;font-family: 'Courier New';color: black;background: #FEFEFF">LOOP AT itab</span> <span style="font-size: 9.5pt;font-family: 'Courier New';color: navy;background: #FEFEFF">result</span> <span style="font-size: 9.5pt;font-family: 'Courier New';color: black;background: #FEFEFF">[</span><span style="font-size: 9.5pt;font-family: 'Courier New';color: navy;background: #FEFEFF">cond</span><span style="font-size: 9.5pt;font-family: 'Courier New';color: black;background: #FEFEFF">] GROUP BY</span> <span style="font-size: 9.5pt;font-family: 'Courier New';color: black;background: #FEFEFF">key ( key1 = dobj1 key2 = dobj2 … </span><span style="font-size: 9.5pt;font-family: 'Courier New';color: black"><br>
<span style="background: #FEFEFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [gs = GROUP SIZE] [gi = GROUP INDEX] )<br>
[ASCENDING|DESCENDING [AS TEXT]]<br>
[WITHOUT MEMBERS]<br>
[{INTO group}|{ASSIGNING &lt;group&gt;}]<br>
…<br>
</span></span><span style="font-size: 9.5pt;font-family: 'Courier New';color: navy;background: #FEFEFF">[LOOP AT GROUP </span><span style="font-size: 9.5pt;font-family: 'Courier New';color: black;background: #FEFEFF">group|&lt;group&gt;<br>
</span><span style="font-size: 9.5pt;font-family: 'Courier New';color: navy;background: #FEFEFF">…</span> <span style="font-size: 9.5pt;font-family: 'Courier New';color: black;background: #FEFEFF"><br>
</span><span style="font-size: 9.5pt;font-family: 'Courier New';color: navy;background: #FEFEFF">ENDLOOP.]</span> <span style="font-size: 9.5pt;font-family: 'Courier New';color: black;background: #FEFEFF"><br>
…</span></strong></p>
<p><span style="color: black;background: #FEFEFF;font-size: 9.5pt;font-family: 'Courier New'"><strong>ENDLOOP.</strong></span></p>
<p><span style="font-family: Arial, sans-serif;font-size: 12pt"><strong>II. Explanation</strong></span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">The outer loop will do one iteration per key. So if 3 records match the key there will only be one iteration for these 3 records. The structure “group” (or</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif"> “&lt;group&gt;” ) is unusual in that it can be looped over using the “LOOP AT GROUP” statement. This will loop over the 3 records (members) of the group. The</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif"> structure “group” also contains the current key as well as the size of the group and index of the group ( if GROUP SIZE and GROUP INDEX have been</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif"> assigned a field name). This is best understood by an example.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: 12pt;font-family: Arial, sans-serif"><strong>III. Example</strong></span></p>
<table style="width: 640px;border-width: 4px;border-style: solid" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4pxpx solid black;border-style: solid;border-width: 4px;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial','sans-serif'">With 7.40</span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4pxpx solid black;border-style: solid;border-width: 4px;padding: 0px 5.4pt" width="810" valign="bottom">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> ty_employee<span class="token punctuation">,</span>
         <span class="token keyword">name</span> <span class="token keyword">TYPE</span> char30<span class="token punctuation">,</span>
         <span class="token keyword">role</span> <span class="token keyword">TYPE</span> char30<span class="token punctuation">,</span>
         age  <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
<span class="token keyword">END</span> <span class="token keyword">OF</span> ty_employee<span class="token punctuation">,</span>

ty_employee_t <span class="token keyword">TYPE</span> <span class="token keyword">STANDARD</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> ty_employee <span class="token keyword">WITH</span> <span class="token keyword">KEY</span> <span class="token keyword">name</span><span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">(</span>gt_employee<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">VALUE</span> ty_employee_t<span class="token punctuation">(</span>
<span class="token punctuation">(</span> <span class="token keyword">name</span> <span class="token operator">=</span> <span class="token string">'John'</span>     <span class="token keyword">role</span> <span class="token operator">=</span> <span class="token string">'ABAP guru'</span>       age <span class="token operator">=</span> <span class="token number">34</span> <span class="token punctuation">)</span>
<span class="token punctuation">(</span> <span class="token keyword">name</span> <span class="token operator">=</span> <span class="token string">'Alice'</span>     <span class="token keyword">role</span> <span class="token operator">=</span> <span class="token string">'FI Consultant'</span>   age <span class="token operator">=</span> <span class="token number">42</span> <span class="token punctuation">)</span>
<span class="token punctuation">(</span> <span class="token keyword">name</span> <span class="token operator">=</span> <span class="token string">'Barry'</span>    <span class="token keyword">role</span> <span class="token operator">=</span> <span class="token string">'ABAP guru'</span>       age <span class="token operator">=</span> <span class="token number">54</span> <span class="token punctuation">)</span>
<span class="token punctuation">(</span> <span class="token keyword">name</span> <span class="token operator">=</span> <span class="token string">'Mary'</span>     <span class="token keyword">role</span> <span class="token operator">=</span> <span class="token string">'FI Consultant'</span>   age <span class="token operator">=</span> <span class="token number">37</span> <span class="token punctuation">)</span>
<span class="token punctuation">(</span> <span class="token keyword">name</span> <span class="token operator">=</span> <span class="token string">'Arthur'</span>   <span class="token keyword">role</span> <span class="token operator">=</span> <span class="token string">'ABAP guru'</span>       age <span class="token operator">=</span> <span class="token number">34</span> <span class="token punctuation">)</span>
<span class="token punctuation">(</span> <span class="token keyword">name</span> <span class="token operator">=</span> <span class="token string">'Mandy'</span>  <span class="token keyword">role</span> <span class="token operator">=</span> <span class="token string">'SD Consultant'</span>  age <span class="token operator">=</span> <span class="token number">64</span> <span class="token punctuation">)</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">:</span> gv_tot_age <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
      gv_avg_age <span class="token keyword">TYPE</span> decfloat34<span class="token punctuation">.</span>

<span class="token eol-comment comment">"Loop with grouping on Role</span>
<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> gt_employee <span class="token keyword">INTO</span> <span class="token keyword">DATA</span><span class="token punctuation">(</span>ls_employee<span class="token punctuation">)</span>
  <span class="token keyword">GROUP</span> <span class="token keyword">BY</span> <span class="token punctuation">(</span> <span class="token keyword">role</span>  <span class="token operator">=</span> ls_employee<span class="token token-operator punctuation">-</span>role
             <span class="token keyword">size</span>  <span class="token operator">=</span> <span class="token keyword">GROUP</span> <span class="token keyword">SIZE</span>
             <span class="token keyword">index</span> <span class="token operator">=</span> <span class="token keyword">GROUP</span> <span class="token keyword">INDEX</span> <span class="token punctuation">)</span>
  <span class="token keyword">ASCENDING</span>
  <span class="token keyword">ASSIGNING</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;group&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span>

  <span class="token keyword">CLEAR</span><span class="token punctuation">:</span> gv_tot_age<span class="token punctuation">.</span>

  <span class="token eol-comment comment">"Output info at group level</span>
  <span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string">Group: </span><span class="token token-operator punctuation">{</span> &lt;group&gt;-index <span class="token token-operator punctuation">}</span><span class="token string-template string">    Role: </span><span class="token token-operator punctuation">{</span> &lt;group&gt;-role <span class="token keyword">WIDTH</span> <span class="token operator">=</span> <span class="token number">15</span> <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span>
              <span class="token string-operator keyword">&amp;</span> <span class="token token-operator punctuation">|</span><span class="token string-template string">     Number in this role: </span><span class="token token-operator punctuation">{</span> &lt;group&gt;-size <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>

   <span class="token eol-comment comment">"Loop at members of the group</span>
   <span class="token keyword">LOOP</span> <span class="token keyword">AT</span> <span class="token keyword">GROUP</span> &lt;group&gt; <span class="token keyword">ASSIGNING</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;ls_member&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span>
      gv_tot_age <span class="token operator">=</span> gv_tot_age <span class="token operator">+</span> &lt;ls_member&gt;-age<span class="token punctuation">.</span>
      <span class="token keyword">WRITE</span><span class="token punctuation">:</span> /<span class="token number">13</span> &lt;ls_member&gt;-name<span class="token punctuation">.</span>
   <span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span>

   <span class="token eol-comment comment">"Average age</span>
   gv_avg_age <span class="token operator">=</span> gv_tot_age <span class="token operator">/</span> &lt;group&gt;-size<span class="token punctuation">.</span>
   <span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string">Average age: </span><span class="token token-operator punctuation">{</span> gv_avg_age <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>

   <span class="token keyword">SKIP</span><span class="token punctuation">.</span>

<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 12pt;font-family: Arial, sans-serif"><strong>IV. Output</strong></span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">Group: 1&nbsp;&nbsp;&nbsp; Role: ABAP guru&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Number in this role: 3</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; John</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Barry</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Arthur</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">Average age: 40.66666666666666666666666666666667</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">Group: 2&nbsp;&nbsp;&nbsp; Role: FI Consultant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Number in this role: 2</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alice</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mary</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">Average age: 39.5</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">Group: 3&nbsp;&nbsp;&nbsp; Role: SD Consultant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Number in this role: 1</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mandy</span></p>
<p style="margin-bottom: 0.0001pt"><span style="font-size: 10pt;font-family: Arial, sans-serif">Average age: 64</span></p>
<p>&nbsp;</p>
<h2><span style="background: #FEFEFF">11. Classes/Methods</span></h2>
<h3>I. Referencing fields within returned structures</h3>
<table style="border: 4px solid #000000;width: 527px;height: 170px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr style="height: 28px">
<th style="border: 4px solid #000000;background-color: #6690bc;padding: 2px;text-align: center;color: #ffffff;height: 28px;width: 507px">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr style="height: 105px">
<td style="border: 4px solid #000000;height: 105px;width: 511px">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">:</span> ls_lfa1  <span class="token keyword">TYPE</span> lfa1<span class="token punctuation">,</span>
      lv_name1 <span class="token keyword">TYPE</span> lfa1<span class="token token-operator punctuation">-</span>name1<span class="token punctuation">.</span>

      ls_lfa1= My_Class<span class="token token-operator punctuation">=&gt;</span>get_lfa1<span class="token punctuation">(</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>
      lv_name1 <span class="token operator">=</span> ls_lfa1<span class="token token-operator punctuation">-</span>name1<span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr style="height: 28px">
<th style="border: 4px solid #000000;background-color: #6690bc;padding: 2px;text-align: center;color: #ffffff;height: 28px;width: 507px">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr style="height: 15px">
<td style="border: 4px solid #000000;height: 15px;width: 511px">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>lv_name1<span class="token punctuation">)</span> <span class="token operator">=</span> My_Class<span class="token token-operator punctuation">=&gt;</span>get_lfa1<span class="token punctuation">(</span> <span class="token punctuation">)</span>-name1<span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h3></h3>
<h3>II. Methods that return a type BOOLEAN</h3>
<table style="border: 4px solid #000000;width: 527px;height: 170px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr style="height: 28px">
<th style="border: 4px solid #000000;background-color: #6690bc;padding: 2px;text-align: center;color: #ffffff;height: 28px;width: 507px">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr style="height: 105px">
<td style="border: 4px solid #000000;height: 105px;width: 511px">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">IF</span> My_Class<span class="token token-operator punctuation">=&gt;</span>return_boolean<span class="token punctuation">(</span> <span class="token punctuation">)</span> <span class="token operator">=</span> abap_true<span class="token punctuation">.</span>
…
<span class="token keyword">ENDIF</span><span class="token punctuation">.</span>
</code></pre>
</td>
</tr>
<tr style="height: 28px">
<th style="border: 4px solid #000000;background-color: #6690bc;padding: 2px;text-align: center;color: #ffffff;height: 28px;width: 507px">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
<tr style="height: 15px">
<td style="border: 4px solid #000000;height: 15px;width: 511px">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">IF</span> My_Class<span class="token token-operator punctuation">=&gt;</span>return_boolean<span class="token punctuation">(</span> <span class="token punctuation">)</span><span class="token punctuation">.</span>
…
<span class="token keyword">ENDIF</span><span class="token punctuation">.</span>
</code></pre>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 0.0001pt">NB: The type “BOOLEAN” is not a true Boolean but a char1 with allowed values X,- and &lt;blank&gt;.</p>
<p style="margin-bottom: 0.0001pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Using type “FLAG” or “WDY_BOOLEAN” works just as well.</p>
<p>&nbsp;</p>
<h3>III. NEW operator</h3>
<p><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif;color: black;background: #FEFEFF">This operator can be used to instantiate an object.</span></p>
<table style="border: 4px solid #000000;width: 640px;height: 180px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;padding: 0px;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>Before 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000;background-color: transparent;vertical-align: baseline;font-family: arial, helvetica, sans-serif;text-align: left;color: #575757;padding: 0px" width="810" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">:</span> lo_delivs <span class="token keyword">TYPE</span> <span class="token keyword">REF</span> <span class="token keyword">TO</span> zcl_sd_delivs<span class="token punctuation">,</span>
      lo_deliv  <span class="token keyword">TYPE</span> <span class="token keyword">REF</span> <span class="token keyword">TO</span> zcl_sd_deliv<span class="token punctuation">.</span>

<span class="token keyword">CREATE</span> <span class="token keyword">OBJECT</span> lo_delivs<span class="token punctuation">.</span>
<span class="token keyword">CREATE</span> <span class="token keyword">OBJECT</span> lo_deliv<span class="token punctuation">.</span>

lo_deliv <span class="token operator">=</span> lo_delivs<span class="token token-operator punctuation">-&gt;</span>get_deliv<span class="token punctuation">(</span> lv_vbeln <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
<tr>
<td style="border: 4px solid #000000;background: #6690bc;vertical-align: baseline;font-family: arial, helvetica, sans-serif;text-align: left;color: #575757;padding: 0px" width="810" valign="top">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</td>
</tr>
<tr>
<td style="border: 4px solid #000000;background-color: transparent;vertical-align: baseline;font-family: arial, helvetica, sans-serif;text-align: left;color: #575757;padding: 2px" width="810" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">DATA</span><span class="token punctuation">(</span>lo_deliv<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">new</span> zcl_sd_delivs<span class="token punctuation">(</span> <span class="token punctuation">)</span>-&gt;get_deliv<span class="token punctuation">(</span> lv_vbeln <span class="token punctuation">)</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h2></h2>
<h2><span style="background: #FEFEFF">12. Meshes</span></h2>
<p><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif;color: black;background: #FEFEFF">Allows an association to be set up between related data groups. </span></p>
<p>I. Problem</p>
<p>Given the following 2 internal tables:</p>
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> t_manager<span class="token punctuation">,</span>
  <span class="token keyword">name</span>   <span class="token keyword">TYPE</span> char10<span class="token punctuation">,</span>
  salary <span class="token keyword">TYPE</span> int4<span class="token punctuation">,</span>
<span class="token keyword">END</span> <span class="token keyword">OF</span> t_manager<span class="token punctuation">,</span>
tt_manager <span class="token keyword">TYPE</span> <span class="token keyword">SORTED</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> t_manager <span class="token keyword">WITH</span> <span class="token keyword">UNIQUE</span> <span class="token keyword">KEY</span> <span class="token keyword">name</span><span class="token punctuation">.</span>

<span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> t_developer<span class="token punctuation">,</span>
  <span class="token keyword">name</span>    <span class="token keyword">TYPE</span> char10<span class="token punctuation">,</span>
  salary  <span class="token keyword">TYPE</span> int4<span class="token punctuation">,</span>
  manager <span class="token keyword">TYPE</span> char10<span class="token punctuation">,</span>   <span class="token eol-comment comment">"Name of manager</span>
<span class="token keyword">END</span> <span class="token keyword">OF</span> t_developer<span class="token punctuation">,</span>
tt_developer <span class="token keyword">TYPE</span> <span class="token keyword">SORTED</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> t_developer <span class="token keyword">WITH</span> <span class="token keyword">UNIQUE</span> <span class="token keyword">KEY</span> <span class="token keyword">name</span><span class="token punctuation">.</span></code></pre>
<p><span style="font-size: 9.0pt;font-family: 'Courier New';color: purple;background: white">&nbsp;</span></p>
<p><strong>Populated as follows:</strong></p>
<table>
<tbody>
<tr>
<td width="47"><strong>Row</strong></td>
<td width="104"><strong>Name[C(10)]</strong></td>
<td width="95"><strong>Salary[I(4)]</strong></td>
</tr>
<tr>
<td width="47">1</td>
<td width="104">Jason</td>
<td width="95">3000</td>
</tr>
<tr>
<td width="47">2</td>
<td width="104">Thomas</td>
<td width="95">3200</td>
</tr>
</tbody>
</table>
<table>
<tbody>
<tr>
<td width="47"><strong>Row</strong></td>
<td width="95"><strong>Name[C(10)]</strong></td>
<td width="85"><strong>Salary[I(4)]</strong></td>
<td width="113"><strong>Manager[C(10)]</strong></td>
</tr>
<tr>
<td width="47">1</td>
<td width="95">Bob</td>
<td width="85">2100</td>
<td width="113">Jason</td>
</tr>
<tr>
<td width="47">2</td>
<td width="95">David</td>
<td width="85">2000</td>
<td width="113">Thomas</td>
</tr>
<tr>
<td width="47">3</td>
<td width="95">Jack</td>
<td width="85">1000</td>
<td width="113">Thomas</td>
</tr>
<tr>
<td width="47">4</td>
<td width="95">Jerry</td>
<td width="85">1000</td>
<td width="113">Jason</td>
</tr>
<tr>
<td width="47">5</td>
<td width="95">John</td>
<td width="85">2100</td>
<td width="113">Thomas</td>
</tr>
<tr>
<td width="47">6</td>
<td width="95">Tom</td>
<td width="85">2000</td>
<td width="113">Jason</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 1rem">II. Solution</span>Get the details of Jerry’s manager and all developers managed by Thomas.</p>
<table style="border: 4px solid #000000;width: 604px;height: 400px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000;background-color: transparent;vertical-align: baseline;font-family: arial, helvetica, sans-serif;padding: 2px;text-align: left;color: #575757">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> <span class="token keyword">MESH</span> m_team<span class="token punctuation">,</span>
         managers   <span class="token keyword">TYPE</span> tt_manager  <span class="token keyword">ASSOCIATION</span> my_employee <span class="token keyword">TO</span> developers
                      <span class="token keyword">ON</span> manager <span class="token operator">=</span> <span class="token keyword">name</span><span class="token punctuation">,</span>
         developers <span class="token keyword">TYPE</span> tt_developer <span class="token keyword">ASSOCIATION</span> my_manager <span class="token keyword">TO</span> managers  
                      <span class="token keyword">ON</span> <span class="token keyword">name</span> <span class="token operator">=</span> manager<span class="token punctuation">,</span>
       <span class="token keyword">END</span> <span class="token keyword">OF</span> <span class="token keyword">MESH</span> m_team<span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">:</span> ls_team <span class="token keyword">TYPE</span> m_team<span class="token punctuation">.</span>
ls_team<span class="token token-operator punctuation">-</span>managers   <span class="token operator">=</span> lt_manager<span class="token punctuation">.</span>
ls_team<span class="token token-operator punctuation">-</span>developers <span class="token operator">=</span> lt_developer<span class="token punctuation">.</span>

<span class="token comment">*Get details of Jerry's manager *</span>

<span class="token eol-comment comment">"get line of dev table</span>
<span class="token keyword">ASSIGN</span> lt_developer[ <span class="token keyword">name</span> <span class="token operator">=</span> <span class="token string">'Jerry'</span> ] <span class="token keyword">TO</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;ls_jerry&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">DATA</span><span class="token punctuation">(</span>ls_jmanager<span class="token punctuation">)</span> <span class="token operator">=</span>  ls_team<span class="token token-operator punctuation">-</span>developers\my_manager[ &lt;ls_jerry&gt; ]<span class="token punctuation">.</span>

<span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string">Jerry's manager: </span><span class="token token-operator punctuation">{</span> ls_jmanager<span class="token token-operator punctuation">-</span>name <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">,</span><span class="token number">30</span>
         <span class="token token-operator punctuation">|</span><span class="token string-template string">Salary: </span><span class="token token-operator punctuation">{</span> ls_jmanager<span class="token token-operator punctuation">-</span>salary <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>

<span class="token eol-comment comment">"Get Thomas' developers</span>
<span class="token keyword">SKIP</span><span class="token punctuation">.</span>
<span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string">Thomas' developers:</span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>

<span class="token eol-comment comment">"line of manager table</span>
<span class="token keyword">ASSIGN</span> lt_manager[ <span class="token keyword">name</span> <span class="token operator">=</span> <span class="token string">'Thomas'</span> ] <span class="token keyword">TO</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;ls_thomas&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span>
<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> ls_team<span class="token token-operator punctuation">-</span>managers\my_employee[ &lt;ls_thomas&gt; ]     
        <span class="token keyword">ASSIGNING</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;ls_emp&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span>
  <span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> <span class="token token-operator punctuation">|</span><span class="token string-template string">Employee name: </span><span class="token token-operator punctuation">{</span> &lt;ls_emp&gt;-name <span class="token token-operator punctuation">}</span><span class="token string-template string"></span><span class="token token-operator punctuation">|</span><span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<h3>III. Output</h3>
<p>Jerry’s manager: Jason&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Salary: 3000</p>
<p>Thomas’ developers:</p>
<p>Employee name: David</p>
<p><span style="font-size: 13.3333px">Employee name: Jack</span></p>
<p><span style="font-size: 13.3333px"><span style="font-size: 13.3333px">Employee name: John</span><br>
</span></p>
<h2></h2>
<p>&nbsp;</p>
<h2><span style="background: #FEFEFF">13. Filter</span></h2>
<p><span style="font-size: 9.5pt;font-family: 'Arial',sans-serif;color: black;background: #FEFEFF">Filter the records in a table based on records in another table.</span></p>
<h3>I. Definition</h3>
<p><span class="qtext">… FILTER type( itab [EXCEPT] [IN ftab] [USING KEY keyname] </span><br>
<span class="qtext"> WHERE c1 op f1 [AND c2 op f2 […]] ) </span></p>
<h3>II. Problem</h3>
<p>Filter an internal table of Flight Schedules (SPFLI) to only those flights based on a filter table that contains the fields Cityfrom and CityTo.</p>
<h3>III. Solution</h3>
<table style="border: 4px solid #000000;width: 640px;height: 400px" cellspacing="0" cellpadding="0" border="4px">
<thead>
<tr>
<th style="border: 4px solid #000000;background-color: #6690bc;text-align: center;color: #ffffff">
<p style="margin-bottom: 0.0001pt;text-align: center" align="center"><span style="color: #333333;background: white;font-size: 9.0pt;font-family: 'Arial',sans-serif"><strong>With 7.40</strong></span></p>
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="border: 4px solid #000000;background-color: transparent;vertical-align: baseline;font-family: arial, helvetica, sans-serif;text-align: left;color: #575757;padding: 2px" width="810" valign="top">
<pre class=" language-abap"><code class=" language-abap"><span class="token keyword">TYPES</span><span class="token punctuation">:</span> <span class="token keyword">BEGIN</span> <span class="token keyword">OF</span> ty_filter<span class="token punctuation">,</span>
         cityfrom <span class="token keyword">TYPE</span> spfli<span class="token token-operator punctuation">-</span>cityfrom<span class="token punctuation">,</span>
         cityto   <span class="token keyword">TYPE</span> spfli<span class="token token-operator punctuation">-</span>cityto<span class="token punctuation">,</span>
         f3       <span class="token keyword">TYPE</span> <span class="token keyword">i</span><span class="token punctuation">,</span>
       <span class="token keyword">END</span> <span class="token keyword">OF</span> ty_filter<span class="token punctuation">,</span>
       ty_filter_tab <span class="token keyword">TYPE</span> <span class="token keyword">HASHED</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> ty_filter
                     <span class="token keyword">WITH</span> <span class="token keyword">UNIQUE</span> <span class="token keyword">KEY</span> cityfrom cityto<span class="token punctuation">.</span>
<span class="token keyword">DATA</span><span class="token punctuation">:</span> lt_splfi <span class="token keyword">TYPE</span> <span class="token keyword">STANDARD</span> <span class="token keyword">TABLE</span> <span class="token keyword">OF</span> spfli<span class="token punctuation">.</span>

<span class="token keyword">SELECT</span> <span class="token operator">*</span> <span class="token keyword">FROM</span> spfli <span class="token keyword">APPENDING</span> <span class="token keyword">TABLE</span> lt_splfi<span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">(</span>lt_filter<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">VALUE</span> ty_filter_tab<span class="token punctuation">(</span> f3 <span class="token operator">=</span> <span class="token number">2</span>
                          <span class="token punctuation">(</span> cityfrom <span class="token operator">=</span> <span class="token string">'NEW YORK'</span>  cityto  <span class="token operator">=</span> <span class="token string">'SAN FRANCISCO'</span> <span class="token punctuation">)</span>
                          <span class="token punctuation">(</span> cityfrom <span class="token operator">=</span> <span class="token string">'FRANKFURT'</span> cityto  <span class="token operator">=</span> <span class="token string">'NEW YORK'</span> <span class="token punctuation">)</span>  <span class="token punctuation">)</span><span class="token punctuation">.</span>

<span class="token keyword">DATA</span><span class="token punctuation">(</span>lt_myrecs<span class="token punctuation">)</span> <span class="token operator">=</span> <span class="token keyword">FILTER</span> #<span class="token punctuation">(</span> lt_splfi <span class="token keyword">IN</span> lt_filter
                                  <span class="token keyword">WHERE</span> cityfrom <span class="token operator">=</span> cityfrom 
                                    <span class="token keyword">AND</span> cityto <span class="token operator">=</span> cityto <span class="token punctuation">)</span><span class="token punctuation">.</span>

“Output filtered records
<span class="token keyword">LOOP</span> <span class="token keyword">AT</span> lt_myrecs <span class="token keyword">ASSIGNING</span> <span class="token keyword">FIELD-SYMBOL</span><span class="token punctuation">(</span>&lt;ls_rec&gt;<span class="token punctuation">)</span><span class="token punctuation">.</span>
  <span class="token keyword">WRITE</span><span class="token punctuation">:</span> <span class="token operator">/</span> &lt;ls_rec&gt;-carrid<span class="token punctuation">,</span><span class="token number">8</span> &lt;ls_rec&gt;-cityfrom<span class="token punctuation">,</span><span class="token number">30</span>
           &lt;ls_rec&gt;-cityto<span class="token punctuation">,</span><span class="token number">45</span> &lt;ls_rec&gt;-deptime<span class="token punctuation">.</span>
<span class="token keyword">ENDLOOP</span><span class="token punctuation">.</span></code></pre>
</td>
</tr>
</tbody>
</table>
<p>Note: using the keyword “EXCEPT” (see definition above) would have returned the exact opposite records i.e all records EXCEPT for those those returned above.</p>