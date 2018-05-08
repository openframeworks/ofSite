## -*- coding: utf-8 -*-
.. title: development

###openFrameworksの開発は、共同作業です。[多くの人々](https://github.com/openframeworks/openFrameworks/contributors)の貢献によって、存続しています。開発者達は、フォーラム、IRC(チャット)、そしてメーリングリストで頻繁に議論しています。

バージョン管理にはgitを使用していて、誰でもブランチを生成し、実験したり提案を行うことが可能です。GitHub上のネットワークダイアグラムをみれば、まるでエイリアンのダイアグラムのように、多くの枝が織り重なり、離れた場所からのPullリクエストが統合され統合されている様子がわかります。世界中をカバーする巨大なコミュニティーが存在していて、コアなコードに対して、バグの修正をしたり、Pullリクエストを処理したり、ツールを研ぎ澄ませています。

その他の方法で貢献したいのであれば、[コミュニティー](../community)のページを訪れてみてください。

<ul class="external_links" >
		<li><a href="http://dev.openframeworks.cc/listinfo.cgi/of-dev-openframeworks.cc">of-devメーリングリスト</a></li>
		<li><a href="http://webchat.freenode.net/?channels=openframeworks&uio=MT1mYWxzZSY5PXRydWUmMTE9Mjk39">IRC</a></li>
		<li><a href="http://forum.openframeworks.cc/">フォーラム</a></li>
		<li><a href="http://github.com/openframeworks/openFrameworks">github</a></li>
</ul>

<hr>

<h2 id="documents">ドキュメント</h2>
<p><a href="https://github.com/openframeworks/openFrameworks/wiki">開発者wiki</a> - openFrameworksに関連した開発ドキュメントの中心</p>
<p><a href="https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow">gitワークフロー</a> - opeFrameworksの開発の際に、開発者コミュニティーに従って開発するためのバージョン管理ワークフロー</p>
<p><a href="https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-Coding-style-guidelines">コードスタイルガイドe</a> - openFrameworksのコードの適切な書式を定めたガイドライン</p>
<p><a href="https://github.com/openframeworks/openFrameworks/wiki/Code-Contribution-Workflow">コーディングの貢献のためのワークフロー</a> - openFrameworksコアへ貢献するためのワークフロー</p>
<p><a href="https://docs.google.com/document/d/1GjgjQZCHTcOD3cT9OFSl0AZ1nhfYwwvxTl5L4OJE6qA/edit?usp=sharing">1.0ロードマップ</a> - 前回の開発者会議で話し合われた、ver.1.0に向けての指針</p>
<hr>
<h2 id="contributors">貢献者</h2>
<p>openFrmeworksは、主に<a href="http://thesystemis.com/">Zach Lieberman</a>、<a href="http://muonics.net/">Theodore Watson</a>、<a href="http://arturocastro.net/">Arturo Castro</a> ("the core")と、<a href="../community/">oFコミュニティー</a>の協力によって開発が進められています
openFrameworksは、2つの先行するプロジェクトの恩恵を受けています。<a href="http://reas.com/">Casey Reas</a>, <a href="http://benfry.com/">Ben Fry</a>そして、Processingコミュニティーによる<a href="http://processing.org/">Processing開発環境</a>。そして、Ben Fry達によって<a href="http://acg.media.mit.edu/">MIT Media Lab's Aesthetics and Computation Group</a>で開発された、ACU Toolkitです。openFrameworksの多くの主要開発者達は、チームで共に作業をしています:</p>

<p>The following people have contributed to the openFrameworks core:</p>
<ul>
<li><a href="http://arturocastro.net">arturo</a></li>
<li><a href="http://christopherbaker.net">Christopher Baker</a></li>
<li><a href="https://github.com/ofTheo">Theodore Watson</a></li>
<li><a href="http://kylemcdonald.net/">Kyle McDonald</a></li>
<li><a href="http://poniesandlight.co.uk">Tim Gfrerer</a></li>
<li><a href="http://codeoncanvas.cc">lukasz karluk</a></li>
<li><a href="http://www.danoli3.com">Daniel Rosser</a></li>
<li><a href="https://colombaro.fr">Léo Colombaro</a></li>
<li><a href="http://danomatika.com">Dan Wilcox</a></li>
<li><a href="https://github.com/ofZach">ofZach</a></li>
<li><a href="https://github.com/bilderbuchi">Christoph Buchner</a></li>
<li><a href="http://nickhardeman.com">Nick Hardeman</a></li>
<li><a href="https://twitter.com/admsyn">Adam Carlucci</a></li>
<li><a href="http://www.memo.tv">Memo Akten</a></li>
<li><a href="http://halfdanj.dk">Jonas Jongejan</a></li>
<li><a href="https://github.com/jvcleave">Jason Van Cleave</a></li>
<li><a href="http://www.kimchiandchips.com">Elliot Woods</a></li>
<li><a href="https://www.thiagohersan.com/">Thiago Hersan</a></li>
<li><a href="http://www.silentlycrashing.net">Elie Zananiri</a></li>
<li><a href="http://www.ingorandolf.info">Ingo Randolf</a></li>
<li><a href="http://roymacdonald.github.io">Roy Macdonald</a></li>
<li><a href="http://jamesgeorge.org">James George</a></li>
<li><a href="http://thefactoryfactory.com">joshua noble</a></li>
<li><a href="https://github.com/oxillo">Olivier XILLO</a></li>
<li><a href="https://github.com/Paul92">Paul92</a></li>
<li><a href="http://makeitdoathing.com">Dan Moore</a></li>
<li><a href="http://frauzufall.de">Deborah Schmidt</a></li>
<li><a href="http://2bit.jp/">ISHII 2bit</a></li>
<li><a href="https://github.com/stfj">stfj</a></li>
<li><a href="http://gingold.com.au">Matthew Gingold</a></li>
<li><a href="http://www.domamatoart.com">Dominic Amato</a></li>
<li><a href="https://github.com/noisecapella">George Schneeloch</a></li>
<li><a href="http://vanderlin.cc">Vanderlin</a></li>
<li><a href="http://www.flong.com">Golan Levin</a></li>
<li><a href="http://www.markhz.com/">Mark Hintz</a></li>
<li><a href="http://uri.cat">Oriol Ferrer Mesià</a></li>
<li><a href="http://www.milespeyton.info">Miles Peyton</a></li>
<li><a href="http://www.jonbro.tk">jonbro</a></li>
<li><a href="http://www.j3ffgray.com">Jeff Gray</a></li>
<li><a href="https://github.com/bitchwhocodes">Stacey</a></li>
<li><a href="https://hamoid.com">Abe Pazos</a></li>
<li><a href="http://www.sarahhoworka.at">sarah howorka</a></li>
<li><a href="http://mattfelsen.com/">Matt Felsen</a></li>
<li><a href="https://mastodon.social/@procedural">procedural</a></li>
<li><a href="http://davideprati.com">Davide Prati</a></li>
<li><a href="http://johan.cc">Johan Bichel Lindegaard</a></li>
<li><a href="https://github.com/ahierony">ahierony</a></li>
<li><a href="http://www.trentbrooks.com">Trent Brooks</a></li>
<li><a href="http://www.roxlu.com">@roxlu ☾</a></li>
<li><a href="http://undef.ch">Philip Whitfield</a></li>
<li><a href="http://firmread.me">Reed Tothong</a></li>
<li><a href="https://robertxiao.ca">Robert Xiao</a></li>
<li><a href="http://messiernicole.com">Nicole Yi Messier</a></li>
<li><a href="https://twitter.com/fxlange">Felix Lange</a></li>
<li><a href="http://abergmeier.blogspot.de/">Andreas Bergmeier</a></li>
<li><a href="http://patriciogonzalezvivo.com">Patricio Gonzalez Vivo</a></li>
<li><a href="https://github.com/kpasko">kpasko</a></li>
<li><a href="https://github.com/MatillaMartin">Martin</a></li>
<li><a href="https://r9y9.github.io/">Ryuichi Yamamoto</a></li>
<li><a href="http://mikewesthad.com">Michael Hadley</a></li>
<li><a href="http://www.multigesture.net">Laurence Muller</a></li>
<li><a href="http://caitlinmorris.net">Caitlin Morris</a></li>
<li><a href="http://jedahan.com">Jonathan Dahan</a></li>
<li><a href="http://www.sensoryempire.com">Pierre Proske</a></li>
<li><a href="https://github.com/soundanalogous">Jeff Hoefs</a></li>
<li><a href="http://www.carolinerecord.com/">Caroline Record</a></li>
<li><a href="http://www.daandelange.com/">Daan de Lange</a></li>
<li><a href="http://timothyscaffidi.com">Timothy Scaffidi</a></li>
<li><a href="http://tobiasebsen.dk">Tobias Ebsen</a></li>
<li><a href="http://julianadenauer.de">Julian Adenauer</a></li>
<li><a href="http://www.grahamreeves.com">Graham Reeves</a></li>
<li><a href="http://nas.sr/">Ramsey Nasser</a></li>
<li><a href="https://github.com/polytrope">polytrope</a></li>
<li><a href="https://github.com/rafirstfruit">rafirstfruit</a></li>
<li><a href="http://www.workergnome.com">David Newbury</a></li>
<li><a href="http://portfolio.nong.io/">Riccardo Canalicchio</a></li>
<li><a href="https://github.com/pizthewiz">pizthewiz</a></li>
<li><a href="https://github.com/kant">Darío Hereñú</a></li>
<li><a href="http://christian-parsons.com">christian parsons</a></li>
<li><a href="https://github.com/liasomething">liasomething</a></li>
<li><a href="http://vade.info">vade</a></li>
<li><a href="https://github.com/kkirby">Kyle Kirby</a></li>
<li><a href="https://github.com/johnkingsley">John Kingsley</a></li>
<li><a href="http://brannon.online">Brannon Dorsey</a></li>
<li><a href="http://www.fredrodrigues.net/">Frederick Rodrigues</a></li>
<li><a href="http://gierard.com">Isaac Gierard</a></li>
<li><a href="https://github.com/liamstask">Liam Staskawicz</a></li>
<li><a href="https://github.com/charlesveasey">Charles Veasey</a></li>
<li><a href="https://github.com/aspeteRakete">aspeteRakete</a></li>
<li><a href="http://brendan-w.com/">Brendan Whitfield</a></li>
<li><a href="https://github.com/wasawi">Jordi Puig</a></li>
<li><a href="http://gamelab.istanbul">R.Noyan Culum</a></li>
<li><a href="http://www.blairneal.com">Blair Neal</a></li>
<li><a href="http://twitter.com/mrgohai">Gottfried Haider</a></li>
<li><a href="http://kriss.cx/tom">Tom Butterworth</a></li>
<li><a href="http://www.syedrezaali.com/">Reza Ali</a></li>
<li><a href="https://github.com/teaguelab">teaguelab</a></li>
<li><a href="https://github.com/expokorea">expokorea</a></li>
<li><a href="http://vimeo.com/amnon">Amnon Owed</a></li>
<li><a href="https://github.com/markpitchless">Mark Pitchless</a></li>
</ul>


<p>The following people have contributed to the openFrameworks site or documentation:</p>
<ul>
<li><a href="http://arturocastro.net">arturo</a></li>
<li><a href="http://icq4ever.net/">Yi donghoon</a></li>
<li><a href="http://kylemcdonald.net/">Kyle McDonald</a></li>
<li><a href="http://mikewesthad.com">Michael Hadley</a></li>
<li><a href="http://thefactoryfactory.com">joshua noble</a></li>
<li><a href="https://github.com/jvcleave">Jason Van Cleave</a></li>
<li><a href="https://github.com/ofTheo">Theodore Watson</a></li>
<li><a href="http://jedahan.com">Jonathan Dahan</a></li>
<li><a href="https://github.com/ofZach">ofZach</a></li>
<li><a href="http://www.workergnome.com">David Newbury</a></li>
<li><a href="http://davideprati.com">Davide Prati</a></li>
<li><a href="https://github.com/jjongun">jjongun</a></li>
<li><a href="http://caitlinmorris.net">Caitlin Morris</a></li>
<li><a href="http://yoppa.org/">Atsushi Tadokoro</a></li>
<li><a href="https://jaspervanloenen.com">Jasper van Loenen</a></li>
<li><a href="http://www.sarahhoworka.at">sarah howorka</a></li>
<li><a href="https://github.com/noisecapella">George Schneeloch</a></li>
<li><a href="https://github.com/csugrue">csugrue</a></li>
<li><a href="http://jordanshaw.com">Jordan Shaw</a></li>
<li><a href="https://hamoid.com">Abe Pazos</a></li>
<li><a href="http://facebook.com/floatorg">Norbert Mezei</a></li>
<li><a href="http://patriciogonzalezvivo.com">Patricio Gonzalez Vivo</a></li>
<li><a href="http://www.mikechambers.com">Mike Chambers</a></li>
<li><a href="http://messiernicole.com">Nicole Yi Messier</a></li>
<li><a href="https://jahya.net">Andrew McWilliams</a></li>
<li><a href="https://www.thiagohersan.com/">Thiago Hersan</a></li>
<li><a href="http://jesusgollonet.com">jesús gollonet</a></li>
<li><a href="http://danomatika.com">Dan Wilcox</a></li>
<li><a href="http://www.jackkalish.com">Jack Kalish</a></li>
<li><a href="https://colombaro.fr">Léo Colombaro</a></li>
<li><a href="https://github.com/bilderbuchi">Christoph Buchner</a></li>
<li><a href="http://www.sterlingcrispin.com">Sterling Crispin</a></li>
<li><a href="http://hanyuandong.com">kavinhan</a></li>
<li><a href="http://www.companje.nl">Rick Companje</a></li>
<li><a href="https://twitter.com/admsyn">Adam Carlucci</a></li>
<li><a href="https://github.com/bschorr">Bernardo Schorr</a></li>
<li><a href="http://frauzufall.de">Deborah Schmidt</a></li>
<li><a href="https://github.com/ahierony">ahierony</a></li>
<li><a href="http://kbct.de/">Björn</a></li>
<li><a href="http://hiz.fool.jp/blog/">hiz</a></li>
<li><a href="http://derekkinsman.com/">Derek J. Kinsman</a></li>
<li><a href="https://github.com/punkto">Jorge Munhoz Castanher</a></li>
<li><a href="https://github.com/kpasko">kpasko</a></li>
<li><a href="https://github.com/ptterb">Brett Peterson</a></li>
<li><a href="http://www.danoli3.com">Daniel Rosser</a></li>
<li><a href="http://www.maiatoday.co.za">maiatoday</a></li>
<li><a href="http://halfdanj.dk">Jonas Jongejan</a></li>
<li><a href="https://github.com/janus2">janus2</a></li>
<li><a href="https://github.com/MatillaMartin">Martin</a></li>
<li><a href="https://github.com/SanghunHeo">SanghunHeo</a></li>
<li><a href="https://github.com/craftweak">Yeh TingHao</a></li>
<li><a href="http://chimana.co/">Yasushi Harada</a></li>
<li><a href="https://www.benzhang.name/">Ben Zhang</a></li>
<li><a href="https://github.com/chphmh">Christoph Mauerhofer</a></li>
<li><a href="http://muresearchlab.com/">Giuseppe</a></li>
<li><a href="http://digitalcoleman.com">Christopher Coleman</a></li>
<li><a href="http://jamesgeorge.org">James George</a></li>
<li><a href="http://rattyduck.com">Alexander Miller</a></li>
<li><a href="http://makio135.com/">Lionel Radisson</a></li>
<li><a href="http://www.jildertviet.com">Jildert Viet</a></li>
<li><a href="http://www.zhouheng.asia">LuZhouheng</a></li>
<li><a href="http://undef.ch">Philip Whitfield</a></li>
<li><a href="http://anas.ghrab.tn">Anas</a></li>
<li><a href="https://github.com/ChulseungYoo">Chulseung Yoo</a></li>
<li><a href="https://github.com/adcox">Andrew Cox</a></li>
<li><a href="http://www.appliedcuriosity.eu">Marcel Ruegenberg</a></li>
<li><a href="http://www.carolinerecord.com/">Caroline Record</a></li>
<li><a href="http://brannon.online">Brannon Dorsey</a></li>
<li><a href="https://github.com/clayheaton">Clay Heaton</a></li>
<li><a href="https://www.peterdavehello.org/">Peter Dave Hello</a></li>
<li><a href="https://github.com/nickdevereaux">Nick Devereaux</a></li>
<li><a href="http://cameronbrowning.com">Cameron Browning</a></li>
<li><a href="http://patrickdinnen.com">Patrick Dinnen</a></li>
<li><a href="https://github.com/MartinBspheroid">Martin Blasko</a></li>
<li><a href="http://briansolon.net">Brian Solon</a></li>
<li><a href="https://github.com/Garmine">Garmine</a></li>
<li><a href="http://eranws.github.io">Eran</a></li>
<li><a href="http://www.kimchiandchips.com">Elliot Woods</a></li>
<li><a href="http://jeffish.com">Jeff Crouse</a></li>
<li><a href="https://github.com/musiko">Eric Koo</a></li>
<li><a href="http://www.mauriciogiraldo.com/">Mauricio Giraldo</a></li>
<li><a href="http://johan.cc">Johan Bichel Lindegaard</a></li>
<li><a href="https://github.com/egradman">egradman</a></li>
<li><a href="http://www.maxnanis.com/">Max Nanis</a></li>
<li><a href="https://github.com/judholliday">Jud Holliday</a></li>
<li><a href="http://julianadenauer.de">Julian Adenauer</a></li>
<li><a href="https://github.com/JohnSebastianHussey">JohnSebastianHussey</a></li>
<li><a href="http://makeitdoathing.com">Dan Moore</a></li>
<li><a href="https://github.com/dan-eachscape">Dan Moore</a></li>
<li><a href="https://github.com/utterances">Qi</a></li>
<li><a href="http://www.neilmendoza.com">Neil Mendoza</a></li>
<li><a href="https://github.com/justdayan">justdayan</a></li>
<li><a href="http://hemisphere-project.com">Maigre</a></li>
<li><a href="http://mmmaaa.xxx">Max Henstell</a></li>
<li><a href="http://zmlka.com">Martin Zemlicka</a></li>
<li><a href="https://github.com/camilosw">Camilo</a></li>
<li><a href="https://github.com/davidglivar">David Glivar</a></li>
<li><a href="http://damianstewart.com">Damian Stewart</a></li>
<li><a href="https://github.com/skaterdude">Roger S</a></li>
<li><a href="http://yongbakos.com">Yong Joseph Bakos</a></li>
</ul>


<p>The following people have contributed to the ofBook project:</p>
<ul>
<li><a href="http://mikewesthad.com">Michael Hadley</a></li>
<li><a href="http://arturocastro.net">arturo</a></li>
<li><a href="https://github.com/ofZach">ofZach</a></li>
<li><a href="http://www.flong.com">Golan Levin</a></li>
<li><a href="http://jtnimoy.com">JT Nimoy</a></li>
<li><a href="https://github.com/ruxrux">ruxrux</a></li>
<li><a href="https://github.com/bilderbuchi">Christoph Buchner</a></li>
<li><a href="http://joelgethinlewis.com">Joel Gethin Lewis</a></li>
<li><a href="https://twitter.com/admsyn">Adam Carlucci</a></li>
<li><a href="http://brannon.online">Brannon Dorsey</a></li>
<li><a href="http://omershapira.com">Omer Shapira</a></li>
<li><a href="http://www.phoenixperry.com">Phoenix Perry</a></li>
<li><a href="http://halfdanj.dk">Jonas Jongejan</a></li>
<li><a href="http://evsc.net">Eva Schindling</a></li>
<li><a href="http://www.kimchiandchips.com">Elliot Woods</a></li>
<li><a href="http://roymacdonald.github.io">Roy Macdonald</a></li>
<li><a href="https://github.com/tegacodes">Tega Brain</a></li>
<li><a href="http://christopherbaker.net">Christopher Baker</a></li>
<li><a href="http://codeoncanvas.cc">lukasz karluk</a></li>
<li><a href="http://firmread.me">Reed Tothong</a></li>
<li><a href="http://icq4ever.net/">Yi donghoon</a></li>
<li><a href="http://www.synesthete.com">Todd Thille</a></li>
<li><a href="https://hamoid.com">Abe Pazos</a></li>
<li><a href="https://github.com/Onna-no-hito">Onna-no-hito</a></li>
<li><a href="http://davideprati.com">Davide Prati</a></li>
<li><a href="http://www.sensoryempire.com">Pierre Proske</a></li>
<li><a href="http://caitlinmorris.net">Caitlin Morris</a></li>
<li><a href="https://github.com/jjongun">jjongun</a></li>
<li><a href="http://www.niboo.be">Tobias Zehntner</a></li>
<li><a href="http://mattfelsen.com/">Matt Felsen</a></li>
<li><a href="https://twitter.com/Brian_Sipple">Brian Sipple</a></li>
<li><a href="https://github.com/jeffro-">jeffro-</a></li>
<li><a href="http://kaylalewis.net">Kayla Lewis</a></li>
<li><a href="http://makio135.com/">Lionel Radisson</a></li>
<li><a href="https://github.com/janus2">janus2</a></li>
<li><a href="http://blog.gregbrant.com">Greg Brant</a></li>
<li><a href="http://www.mikechambers.com">Mike Chambers</a></li>
<li><a href="http://huah.net/jason/">Jason Alderman</a></li>
<li><a href="http://www.memo.tv">Memo Akten</a></li>
<li><a href="https://github.com/feanil">Feanil Patel</a></li>
<li><a href="https://serkansokmen.com">Serkan Sökmen</a></li>
<li><a href="http://gerritneven.nl">Gerben Neven</a></li>
<li><a href="http://www.thingsbymatt.com">Matthew Hollings</a></li>
<li><a href="http://www.NeverOddorEven.tv">Eve Weinberg</a></li>
<li><a href="http://www.blairneal.com">Blair Neal</a></li>
<li><a href="http://thefactoryfactory.com">joshua noble</a></li>
<li><a href="http://demare.st">feature-creature</a></li>
<li><a href="https://github.com/tmm2018">tmm2018</a></li>
<li><a href="https://twitter.com/omar4ur">Omar Shehata</a></li>
<li><a href="http://kittrick.co">Kit MacAllister</a></li>
<li><a href="https://github.com/Antharia">Nicolas C</a></li>
<li><a href="https://github.com/wongjustin98">wongjustin98</a></li>
<li><a href="http://www.andynicholas.com">Andy Nicholas</a></li>
<li><a href="https://github.com/TheInnerParty">Leo Dastur</a></li>
<li><a href="http://martialgallorini.github.io">Martial</a></li>
<li><a href="http://webodrome.fr">fdiba</a></li>
<li><a href="http://vvzen.github.io">Valerio Viperino</a></li>
<li><a href="https://github.com/wasawi">Jordi Puig</a></li>
<li><a href="http://www.honnet.eu">Cédric / Drix</a></li>
<li><a href="http://nvoid.com">Elburz Sorkhabi</a></li>
<li><a href="http://hanyuandong.com">kavinhan</a></li>
<li><a href="https://www.devkim.me/">Hyeongbin Kim</a></li>
<li><a href="http://portfolio.nong.io/">Riccardo Canalicchio</a></li>
<li><a href="https://github.com/ptterb">Brett Peterson</a></li>
<li><a href="http://marcusrussi.github.io/cascades-spring-2017/">Marcus Russi</a></li>
<li><a href="http://www.danoli3.com">Daniel Rosser</a></li>
<li><a href="https://github.com/nunogmartins">Nuno Miguel Galvão Martins</a></li>
<li><a href="http://patriciogonzalezvivo.com">Patricio Gonzalez Vivo</a></li>
</ul>

<p>The following people have contributed to the ofxaddons site:</p>
<ul>
<li><a href="http://www.virtualjames.com">James Hughes</a></li>
<li><a href="http://jamesgeorge.org">James George</a></li>
<li><a href="http://kikko.fr">Cyril Diagne</a></li>
<li><a href="https://github.com/csugrue">csugrue</a></li>
<li><a href="http://gregborenstein.com">Greg Borenstein</a></li>
<li><a href="http://halfdanj.dk">Jonas Jongejan</a></li>
<li><a href="https://hamoid.com">Abe Pazos</a></li>
<li><a href="http://davideprati.com">Davide Prati</a></li>
<li><a href="http://www.dwellable.com">James Hughes</a></li>
<li><a href="https://github.com/lmccart">Lauren McCarthy</a></li>
</ul>

<p>The previous contributors lists are autogenerated from the different repositories. If you've contributed to the project in any way and don't find your name here please let us know so we can add your name.</p>

<p>The following people have contributed in the past through means others than code:</p>
<ul>
<li><a href="https://github.com/caitlinmorris">Caitlin Morris</a> (caitlinmorris) as community management and outreach</a></li>
<li><a href="https://github.com/kylemcdonald">Kyle McDonald</a> (kylemcdonald) for community management</li>
<li><a href="https://github.com/bilderbuchi">Christoph Buchner</a> (bilderbuchi) for community management and GitHub leadership</li>
<li><a href="https://github.com/jvcleave">Jason Van Cleave</a> (jvcleave) as forum leader</li>
<li><a href="http://www.roxlu.com/">Diederick Huijbers</a> (roxlu) as tutorial leader</li>
<li><a href="http://www.jeffcrouse.info/">Jeff Crouse</a> (jefftimesten) as tutorial leader</li>
<li><a href="http://genekogan.com/">Gene Kogan</a> (genekogan) as addons curator at ofxaddons.com</li>
<li><a href="http://schoolofma.org/">Rachel Uwa</a> ofbook project coordination</li>
</ul>