<div class="document" id="documentId">
  <div class="container">
    <h1 class="title">Module optional_t</h1>
    <div class="row">
  <div class="three columns">
  <ul class="simple simple-toc" id="toc-list">
<li>
  <a class="reference reference-toplevel" href="#6" id="56">Imports</a>
  <ul class="simple simple-toc-section">
    
  </ul>
</li>
<li>
  <a class="reference reference-toplevel" href="#7" id="57">Types</a>
  <ul class="simple simple-toc-section">
      <li><a class="reference" href="#OptionType"
    title="OptionType = enum 
  None, Some"><wbr />Option<wbr />Type</a></li>
  <li><a class="reference" href="#Option"
    title="Option[T] = object 
  kind: OptionType
  val: T"><wbr />Option</a></li>

  </ul>
</li>
<li>
  <a class="reference reference-toplevel" href="#12" id="62">Procs</a>
  <ul class="simple simple-toc-section">
      <li><a class="reference" href="#Some,T"
    title="Some[T](val: T): Option[T]"><wbr />Some</a></li>
  <li><a class="reference" href="#None,"
    title="None[T](): Option[T]"><wbr />None</a></li>
  <li><a class="reference" href="#isSome,Option[T]"
    title="isSome[T](self: Option[T]): bool"><wbr />is<wbr />Some</a></li>
  <li><a class="reference" href="#isNone,Option[T]"
    title="isNone[T](self: Option[T]): bool"><wbr />is<wbr />None</a></li>
  <li><a class="reference" href="#unsafeGet,Option[T]"
    title="unsafeGet[T](self: Option[T]): T"><wbr />unsafe<wbr />Get</a></li>
  <li><a class="reference" href="#get,Option[T]"
    title="get[T](self: Option[T]): T"><wbr />get</a></li>
  <li><a class="reference" href="#get,Option[T],T"
    title="get[T](self: Option[T]; default: T): T"><wbr />get</a></li>
  <li><a class="reference" href="#map,Option[T],proc(T)"
    title="map[T, R](self: Option[T]; oper: proc (input: T): R): Option[R]"><wbr />map</a></li>
  <li><a class="reference" href="#$,Option[T]"
    title="`$`[T](self: Option[T]): string"><wbr />`$`</a></li>
  <li><a class="reference" href="#==,Option[T],Option[T]"
    title="`==`[T](a, b: Option[T]): bool"><wbr />`==`</a></li>

  </ul>
</li>
<li>
  <a class="reference reference-toplevel" href="#16" id="66">Converters</a>
  <ul class="simple simple-toc-section">
      <li><a class="reference" href="#toBool.c,Option[T]"
    title="toBool[T](self: Option[T]): bool"><wbr />to<wbr />Bool</a></li>

  </ul>
</li>

</ul>

  </div>
  <div class="nine columns" id="content">
  <p class="module-desc"></p>
  <div class="section" id="6">
<h1><a class="toc-backref" href="#6">Imports</a></h1>
<dl class="item">
<a class="reference external" href="typetraits.html">typetraits</a>
</dl></div>
<div class="section" id="7">
<h1><a class="toc-backref" href="#7">Types</a></h1>
<dl class="item">
<dt id="OptionType"><a name="OptionType"></a><pre><span class="Identifier">OptionType</span> <span class="Other">=</span> <span class="Keyword">enum</span> 
  <span class="Identifier">None</span><span class="Other">,</span> <span class="Identifier">Some</span></pre></dt>
<dd>


</dd>
<dt id="Option"><a name="Option"></a><pre><span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span> <span class="Other">=</span> <span class="Keyword">object</span> 
  <span class="Identifier">kind</span><span class="Other">:</span> <span class="Identifier">OptionType</span>
  <span class="Identifier">val</span><span class="Other">:</span> <span class="Identifier">T</span>
</pre></dt>
<dd>


</dd>

</dl></div>
<div class="section" id="12">
<h1><a class="toc-backref" href="#12">Procs</a></h1>
<dl class="item">
<dt id="Some"><a name="Some,T"></a><pre><span class="Keyword">proc</span> <span class="Identifier">Some</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">val</span><span class="Other">:</span> <span class="Identifier">T</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span></pre></dt>
<dd>


</dd>
<dt id="None"><a name="None,"></a><pre><span class="Keyword">proc</span> <span class="Identifier">None</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span></pre></dt>
<dd>


</dd>
<dt id="isSome"><a name="isSome,Option[T]"></a><pre><span class="Keyword">proc</span> <span class="Identifier">isSome</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">self</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">bool</span></pre></dt>
<dd>


</dd>
<dt id="isNone"><a name="isNone,Option[T]"></a><pre><span class="Keyword">proc</span> <span class="Identifier">isNone</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">self</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">bool</span></pre></dt>
<dd>


</dd>
<dt id="unsafeGet"><a name="unsafeGet,Option[T]"></a><pre><span class="Keyword">proc</span> <span class="Identifier">unsafeGet</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">self</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">T</span></pre></dt>
<dd>
Gets the value in <cite>self</cite>. If <cite>self</cite> is None, then behavior is undefined

</dd>
<dt id="get"><a name="get,Option[T]"></a><pre><span class="Keyword">proc</span> <span class="Identifier">get</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">self</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">T</span></pre></dt>
<dd>
Get <cite>self</cite>'s value if <cite>self</cite> is Some, otherwise fail and raise an exception

</dd>
<dt id="get"><a name="get,Option[T],T"></a><pre><span class="Keyword">proc</span> <span class="Identifier">get</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">self</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">;</span> <span class="Identifier">default</span><span class="Other">:</span> <span class="Identifier">T</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">T</span></pre></dt>
<dd>
If <cite>self</cite> is Some, then return <cite>self</cite>'s value If <cite>self</cite> is None, then return <cite>default</cite>

</dd>
<dt id="map"><a name="map,Option[T],proc(T)"></a><pre><span class="Keyword">proc</span> <span class="Identifier">map</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">,</span> <span class="Identifier">R</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">self</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">;</span> <span class="Identifier">oper</span><span class="Other">:</span> <span class="Keyword">proc</span> <span class="Other">(</span><span class="Identifier">input</span><span class="Other">:</span> <span class="Identifier">T</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">R</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">R</span><span class="Other">]</span></pre></dt>
<dd>
If <cite>self</cite> is Some, then <cite>oper</cite> is executed with it's value and returned. Otherwise, None is returned.

</dd>
<dt id="$"><a name="$,Option[T]"></a><pre><span class="Keyword">proc</span> <span class="Identifier">`$`</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">self</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">string</span></pre></dt>
<dd>


</dd>
<dt id="=="><a name="==,Option[T],Option[T]"></a><pre><span class="Keyword">proc</span> <span class="Identifier">`==`</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">a</span><span class="Other">,</span> <span class="Identifier">b</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">bool</span></pre></dt>
<dd>


</dd>

</dl></div>
<div class="section" id="16">
<h1><a class="toc-backref" href="#16">Converters</a></h1>
<dl class="item">
<dt id="toBool"><a name="toBool.c,Option[T]"></a><pre><span class="Keyword">converter</span> <span class="Identifier">toBool</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">(</span><span class="Identifier">self</span><span class="Other">:</span> <span class="Identifier">Option</span><span class="Other">[</span><span class="Identifier">T</span><span class="Other">]</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">bool</span></pre></dt>
<dd>
Can be used as
<pre><code>
if myOption:
  discard myOption.get
</code></pre>
</dl>
</p></blockquote>


</dd>

</dl></div>

  </div>
</div>
