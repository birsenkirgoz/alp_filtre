<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php');
?>

<div class="clear"></div>

<div id="main-content-container" class="grid_24">
    <div id="main-content-inner">
        <table width="910" border="0" align="center" cellpadding="0" cellspacing="0" class="filtre-text">
            <tr>
                <td width="440" valign="top" class="sol-icerik">
                    <?php
                    $a = new Area('Sol İcerik');
                    $a->display($c);
                    ?>
                </td>
                <td width="440" valign="top" class="sag-icerik">
                    <?php
                    $a = new Area('Sağ İçerik');
                    $a->display($c);
                    ?>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <table width="910" border="0" align="center" cellpadding="0" cellspacing="0" class="secim-cizelgesi">
                        <tr><td width="910" colspan="7" class="tablo-baslik"><h5>FİLTRE SEÇİM ÇİZELGESİ</h5></td></tr>
                        <tr>
                            <th width="70"></th><th>ÜRÜN KODU</th><th width="112">PARTİKÜL BOYUTU</th><th width="100">&nbsp;</th><th width="90">EN 779</th><th width="90">EU 4 / 5</th><th width="155" colspan="3">ORTALAMA VERİM</th>
                        </tr>
                        <tr>
                            <td rowspan="4"><strong>ÖN FİLTRELER</strong></td>
                            <td rowspan="2">CBT, SER, PFY, FCF, PMF, PKF</td>
                            <td rowspan="2">&gt;10 <span role="treeitem"> µ</span>m</td>
                            <td rowspan="2">&nbsp;</td>
                            <td>G1</td>
                            <td>EU1</td>
                            <td colspan="3">Am &lt; 65</td>
                        </tr>
                        <tr>
                            <td>G2</td>
                            <td>EU2</td>
                            <td colspan="3">65 ≤ Am &lt; 80</td>
                        </tr>
                        <tr>
                            <td>CBT, SER, PFY, FCF, PMF, PKF, STF</td>
                            <td rowspan="2">3 -10 <span role="treeitem"> µ</span>m</td>
                            <td rowspan="2">&nbsp;</td>
                            <td>G3</td>
                            <td>EU3</td>
                            <td colspan="3">80 ≤ Am &lt; 90</td>
                        </tr>
                        <tr>
                            <td>SER, PKF, STF</td>
                            <td>G4</td>
                            <td>EU4</td>
                            <td colspan="3">90≤ Am</td>
                        </tr>
                        <tr>
                            <td rowspan="5"><strong>HASSAS FİLTRELER</strong></td>
                            <td>SER, MTF600, HTF</td>
                            <td rowspan="2">1 - 3 <span role="treeitem"> µ</span>m</td>
                            <td rowspan="2">&nbsp;</td>
                            <td>F5</td>
                            <td>EU5</td>
                            <td colspan="3">40 ≤ Em &lt; 60</td>
                        </tr>
                        <tr>
                            <td>HTF, KVF, KDF, ASF</td>
                            <td>F6</td>
                            <td>EU6</td>
                            <td colspan="3">60 ≤ Em &lt; 80</td>
                        </tr>
                        <tr>
                            <td>HTF, KVF, KPF,ASF,AKF</td>
                            <td rowspan="3">0,3 - 1 µm</td>
                            <td rowspan="3">&nbsp;</td>
                            <td>F7</td>
                            <td>EU7</td>
                            <td colspan="3">80 ≤ Em &lt; 90</td>
                        </tr>
                        <tr>
                            <td>HTF, KVF, KDF, ASF</td>
                            <td>F8</td>
                            <td>EU8</td>
                            <td colspan="3">90 ≤ Em &lt; 95</td>
                        </tr>
                        <tr>
                            <td>HTF, KVF, KDF, ASF</td>
                            <td>F9</td>
                            <td>EU9</td>
                            <td colspan="3">95 ≤ Em </td>
                        </tr>
                        <tr>
                            <td colspan="4" rowspan="2">&nbsp;</td>
                            <th width="90">EN 1822</th>
                            <th width="90">EU 4 / 4</th>
                            <th width="155">ORTALAMA VERİM</th>
                        </tr>
                        <tr>
                            <td><strong>É % @ 0.3 µm</strong></td>
                            <td></td>
                            <td><strong>É % @ MPPS</strong></td>
                        </tr>
                        <tr>
                            <td rowspan="5"><strong>HEPA FİLTRELER</strong></td>
                            <td>KVF, PHF, HVF</td>
                            <td>0,3 - 1 µm</td>
                            <td>≤ 95</td>
                            <td>H10</td>
                            <td>EU10</td>
                            <td>≤85</td>
                        </tr>
                        <tr>
                            <td>PHF, HVF</td>
                            <td rowspan="4">&lt; 0,3 µm</td>
                            <td>≤ 98</td>
                            <td>H11</td>
                            <td>EU11</td>
                            <td>≤ 95</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>≤ 99.99</td>
                            <td>H12</td>
                            <td>EU12</td>
                            <td>≤ 99.5</td>
                        </tr>
                        <tr>
                            <td>PHF, HVF, HDF</td>
                            <td>≤ 99.997</td>
                            <td>H13</td>
                            <td>EU13</td>
                            <td>≤ 99.95</td>
                        </tr>
                        <tr>
                            <td>PHF, HVF, HDF</td>
                            <td>≤ 99.999</td>
                            <td>H14</td>
                            <td>EU14</td>
                            <td>≤ 99.995</td>
                        </tr>
                        <tr>
                            <td rowspan="4"><strong>ULPA FİLTRELER</strong></td>
                            <td rowspan="4">PHF, HVF, HDF</td>
                            <td rowspan="4">0,2 - 0,1 µm</td>
                            <td><strong>É % @ 0.12 µm</strong></td>
                            <td colspan="3"></td>
                        </tr>
                        <tr>
                            <td>≤ 99.9995</td>
                            <td>U15</td>
                            <td>EU15</td>
                            <td>≤ 99.9995</td>
                        </tr>
                        <tr>
                            <td>≤ 99.99995</td>
                            <td>U16</td>
                            <td>EU16</td>
                            <td>≤ 99.99995</td>
                        </tr>
                        <tr>
                            <td>≤ 99.999995</td>
                            <td>U17</td>
                            <td>EU17</td>
                            <td>≤ 99.999995</td>
                        </tr>
                        <tr>
                            <td colspan="7" >
                                <table class="dipnot" width="902" border="0" align="center" cellpadding="0" cellspacing="0" >
                                    <tr>
                                        <td width="41"><strong>Am %</strong></td>
                                        <td width="10"><strong>:</strong></td>
                                        <td width="400">G1 - G4 sınıfındaki ön filtreler için ortalama toz yakalama oranı.</td>
                                        <td width="41"><strong>E %</strong></td>
                                        <td width="10"><strong>:</strong></td>
                                        <td width="400">H10 - U17 sınıfındaki hepa b-ve ulpa filtreler için ortalama verim</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Em % </strong></td>
                                        <td><strong>:</strong></td>
                                        <td>F5 - F9 sınıfındki hassas filtreler için ortalam verim.</td>
                                        <td><strong>MPPS</strong></td>
                                        <td><strong>:</strong></td>
                                        <td>Filtrenin en çok geçirdiği tane boyu</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <?php
                    $a = new Area('İçerik');
                    $a->display($c);
                    ?>
                </td>
            </tr>
        </table>
    </div>
</div>

<?php $this->inc('elements/footer.php'); ?>