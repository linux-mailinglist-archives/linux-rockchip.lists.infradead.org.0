Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BECD12CC08
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 04:05:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JAaCvqMz5nHv30dzDamYOki2fGNAXEQXZ+F3U3kxPU8=; b=sUbr/J0jgGERJmiWSoKv0+77A
	+TlDt7AChrOvsJJ8Q/iCIDHo22jXDLcR+oeiCRde6B2II064O0ytAxu8AWNbJY+EavTenARU+A6zl
	ovAopyRswatfuEd76/hn4oKhlt1DLvhNmsM5oxannkvbFkbN15uBaabg/7aIuztUi7rCOOeoyyD/l
	YIZcqj+51l8oEd9z/EuY/J8WHmWijD2HgSlp8E47zzZPbxTe6yy4K8Ep1GUKAOeIs1lao4HXuDCG+
	JCpk4lJuqipqujzL5739KpzuTDKTFRtnfV28bhpGCNsOy46b1gcLumr5LJ28cyK7cuabEyxtQfzmV
	/dLGXnOKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illND-0000FP-6w; Mon, 30 Dec 2019 03:05:39 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illN6-0000Ev-Mo
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 03:05:36 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 122B853C;
 Mon, 30 Dec 2019 11:05:31 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10935T140244991059712S1577675130385604_; 
 Mon, 30 Dec 2019 11:05:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a3fd15c41724ee39cde964ebf6e467de>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 11/11] roc-rk3399-pc: Add SPI boot support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-12-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4cc4007b-a55d-f75d-623e-52914795d76b@rock-chips.com>
Date: Mon, 30 Dec 2019 11:05:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-12-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190533_066848_925D4A5E 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgU1BJIGJv
b3Qgc3VwcG9ydCBmb3IgUk9DLVJLMzM5OS1QQyBib2FyZC4KPgo+IFRoaXMgd291bGQgYWRkIHNl
cGFyYXRlIGNvbmZpZyBmaWxlCgpXaGF0IGlzIHRoZSBrZXkgcmVhc29uIHRvIGhhdmUgYSBuZXcg
c2VwYXJhdGUgY29uZmlnIGZpbGU/IEkgdGhpbmsgaXQgCndvdWxkIGJlIG11Y2ggYmV0dGVyCgp0
byB1c2UgdGhlIHNhbWUgZGVmY29uZmlnLCBzcGkgYm9vdCBpcyBvbmUgb2YgZmVhdHVyZXMgbGlr
ZSBvdGhlciAKZmVhdHVyZXMsIGl0IHNob3VsZCBub3QgbmVlZAoKYSBzZXBhcmF0ZSBjb25maWcu
CgoKVGhhbmtzLAoKLSBLZXZlcgoKPiAgIGZvciBTUEkgYWxvbmcKPiB3aXRoIGR0cyBjaGFuZ2Vz
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5j
b20+Cj4gLS0tCj4gICBhcmNoL2FybS9kdHMvcmszMzk5LXJvYy1wYy11LWJvb3QuZHRzaSB8IDEy
ICsrKystCj4gICBib2FyZC9yb2NrY2hpcC9ldmJfcmszMzk5L01BSU5UQUlORVJTICB8ICAyICsK
PiAgIGNvbmZpZ3Mvcm9jLXBjLXJrMzM5OS1zcGlfZGVmY29uZmlnICAgIHwgNjIgKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgIDMgZmlsZXMgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGNvbmZpZ3Mvcm9jLXBjLXJrMzM5
OS1zcGlfZGVmY29uZmlnCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS1yb2Mt
cGMtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5LXJvYy1wYy11LWJvb3QuZHRzaQo+
IGluZGV4IDU3NDY0NDI5ODEuLjZlNDNjN2M3MWIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vZHRz
L3JrMzM5OS1yb2MtcGMtdS1ib290LmR0c2kKPiArKysgYi9hcmNoL2FybS9kdHMvcmszMzk5LXJv
Yy1wYy11LWJvb3QuZHRzaQo+IEBAIC0xMSw4ICsxMSwxOCBAQAo+ICAgCQlzcGkwID0gJnNwaTE7
Cj4gICAJfTsKPiAgIAo+ICsJY29uZmlnIHsKPiArCQl1LWJvb3Qsc3BsLXBheWxvYWQtb2Zmc2V0
ID0gPDB4NDAwMDA+OyAvKiBAIDI1NktCICovCj4gKwl9Owo+ICsKPiAgIAljaG9zZW4gewo+IC0J
CXUtYm9vdCxzcGwtYm9vdC1vcmRlciA9ICJzYW1lLWFzLXNwbCIsICZzZGhjaSwgJnNkbW1jOwo+
ICsJCXUtYm9vdCxzcGwtYm9vdC1vcmRlciA9ICJzYW1lLWFzLXNwbCIsICZzcGlfZmxhc2gsICZz
ZGhjaSwgJnNkbW1jOwo+ICsJfTsKPiArfTsKPiArCj4gKyZzcGkxIHsKPiArCXNwaV9mbGFzaDog
Zmxhc2hAMCB7Cj4gKwkJdS1ib290LGRtLXByZS1yZWxvYzsKPiAgIAl9Owo+ICAgfTsKPiAgIAo+
IGRpZmYgLS1naXQgYS9ib2FyZC9yb2NrY2hpcC9ldmJfcmszMzk5L01BSU5UQUlORVJTIGIvYm9h
cmQvcm9ja2NoaXAvZXZiX3JrMzM5OS9NQUlOVEFJTkVSUwo+IGluZGV4IGVhYjRjNGM1MjUuLjhk
ZTZlYzg4ZjEgMTAwNjQ0Cj4gLS0tIGEvYm9hcmQvcm9ja2NoaXAvZXZiX3JrMzM5OS9NQUlOVEFJ
TkVSUwo+ICsrKyBiL2JvYXJkL3JvY2tjaGlwL2V2Yl9yazMzOTkvTUFJTlRBSU5FUlMKPiBAQCAt
NTcsOCArNTcsMTAgQEAgRjoJYXJjaC9hcm0vZHRzL3JrMzM5OS1vcmFuZ2VwaS11LWJvb3QuZHRz
aQo+ICAgCj4gICBST0MtUkszMzk5LVBDCj4gICBNOglMZXZpbiBEdSA8ZGp3QHQtY2hpcC5jb20u
Y24+Cj4gK006CUphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ICAgUzoJ
TWFpbnRhaW5lZAo+ICAgRjoJY29uZmlncy9yb2MtcGMtcmszMzk5X2RlZmNvbmZpZwo+ICtGOglj
b25maWdzL3JvYy1wYy1yazMzOTktc3BpX2RlZmNvbmZpZwo+ICAgRjoJYXJjaC9hcm0vZHRzL3Jr
MzM5OS1yb2MtcGMtdS1ib290LmR0c2kKPiAgIAo+ICAgUk9DSy1QSS00Cj4gZGlmZiAtLWdpdCBh
L2NvbmZpZ3Mvcm9jLXBjLXJrMzM5OS1zcGlfZGVmY29uZmlnIGIvY29uZmlncy9yb2MtcGMtcmsz
Mzk5LXNwaV9kZWZjb25maWcKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAw
MDAuLjFmZGZiMTAxMDEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvY29uZmlncy9yb2MtcGMtcmsz
Mzk5LXNwaV9kZWZjb25maWcKPiBAQCAtMCwwICsxLDYyIEBACj4gK0NPTkZJR19BUk09eQo+ICtD
T05GSUdfQVJDSF9ST0NLQ0hJUD15Cj4gK0NPTkZJR19TWVNfVEVYVF9CQVNFPTB4MDAyMDAwMDAK
PiArQ09ORklHX1JPQ0tDSElQX1JLMzM5OT15Cj4gK0NPTkZJR19ST0NLQ0hJUF9TUExfUkVTRVJW
RV9JUkFNPTB4NDAwMAo+ICtDT05GSUdfTlJfRFJBTV9CQU5LUz0xCj4gK0NPTkZJR19ERUJVR19V
QVJUX0JBU0U9MHhGRjFBMDAwMAo+ICtDT05GSUdfREVCVUdfVUFSVF9DTE9DSz0yNDAwMDAwMAo+
ICtDT05GSUdfREVCVUdfVUFSVD15Cj4gK0NPTkZJR19ERUZBVUxUX0ZEVF9GSUxFPSJyb2NrY2hp
cC9yazMzOTktcm9jLXBjLmR0YiIKPiArIyBDT05GSUdfRElTUExBWV9DUFVJTkZPIGlzIG5vdCBz
ZXQKPiArQ09ORklHX0RJU1BMQVlfQk9BUkRJTkZPX0xBVEU9eQo+ICsjIENPTkZJR19TUExfUkFX
X0lNQUdFX1NVUFBPUlQgaXMgbm90IHNldAo+ICsjIENPTkZJR19TUExfTU1DX1NVUFBPUlQgaXMg
bm90IHNldAo+ICtDT05GSUdfU1BMX1NQSV9GTEFTSF9TVVBQT1JUPXkKPiArQ09ORklHX1NQTF9T
UElfU1VQUE9SVD15Cj4gK0NPTkZJR19TUExfU1BJX0xPQUQ9eQo+ICtDT05GSUdfU1BMX1RFWFRf
QkFTRT0weGZmOGMyMDAwCj4gK0NPTkZJR19TUExfU1RBQ0tfUj15Cj4gK0NPTkZJR19TUExfU1RB
Q0tfUl9NQUxMT0NfU0lNUExFX0xFTj0weDQwMDAKPiArQ09ORklHX0NNRF9CT09UWj15Cj4gK0NP
TkZJR19DTURfR1BUPXkKPiArQ09ORklHX0NNRF9NTUM9eQo+ICtDT05GSUdfQ01EX1VTQj15Cj4g
KyMgQ09ORklHX0NNRF9TRVRFWFBSIGlzIG5vdCBzZXQKPiArQ09ORklHX0NNRF9USU1FPXkKPiAr
Q09ORklHX1NQTF9PRl9DT05UUk9MPXkKPiArQ09ORklHX0RFRkFVTFRfREVWSUNFX1RSRUU9InJr
MzM5OS1yb2MtcGMiCj4gK0NPTkZJR19PRl9TUExfUkVNT1ZFX1BST1BTPSJwaW5jdHJsLTAgcGlu
Y3RybC1uYW1lcyBjbG9jay1uYW1lcyBpbnRlcnJ1cHQtcGFyZW50IGFzc2lnbmVkLWNsb2NrcyBh
c3NpZ25lZC1jbG9jay1yYXRlcyBhc3NpZ25lZC1jbG9jay1wYXJlbnRzIgo+ICtDT05GSUdfRU5W
X0lTX0lOX1NQSV9GTEFTSD15Cj4gK0NPTkZJR19TWVNfUkVMT0NfR0RfRU5WX0FERFI9eQo+ICtD
T05GSUdfUk9DS0NISVBfR1BJTz15Cj4gK0NPTkZJR19TWVNfSTJDX1JPQ0tDSElQPXkKPiArQ09O
RklHX01NQ19EVz15Cj4gK0NPTkZJR19NTUNfRFdfUk9DS0NISVA9eQo+ICtDT05GSUdfTU1DX1NE
SENJPXkKPiArQ09ORklHX01NQ19TREhDSV9ST0NLQ0hJUD15Cj4gK0NPTkZJR19ETV9FVEg9eQo+
ICtDT05GSUdfRVRIX0RFU0lHTldBUkU9eQo+ICtDT05GSUdfR01BQ19ST0NLQ0hJUD15Cj4gK0NP
TkZJR19QTUlDX1JLOFhYPXkKPiArQ09ORklHX1JFR1VMQVRPUl9QV009eQo+ICtDT05GSUdfUkVH
VUxBVE9SX1JLOFhYPXkKPiArQ09ORklHX1BXTV9ST0NLQ0hJUD15Cj4gK0NPTkZJR19SQU1fUksz
Mzk5X0xQRERSND15Cj4gK0NPTkZJR19CQVVEUkFURT0xNTAwMDAwCj4gK0NPTkZJR19ERUJVR19V
QVJUX1NISUZUPTIKPiArQ09ORklHX1NZU1JFU0VUPXkKPiArQ09ORklHX1NQSV9GTEFTSF9XSU5C
T05EPXkKPiArQ09ORklHX1JPQ0tDSElQX1NQST15Cj4gK0NPTkZJR19VU0I9eQo+ICtDT05GSUdf
VVNCX1hIQ0lfSENEPXkKPiArQ09ORklHX1VTQl9YSENJX0RXQzM9eQo+ICtDT05GSUdfVVNCX0VI
Q0lfSENEPXkKPiArQ09ORklHX1VTQl9FSENJX0dFTkVSSUM9eQo+ICtDT05GSUdfVVNCX0hPU1Rf
RVRIRVI9eQo+ICtDT05GSUdfVVNCX0VUSEVSX0FTSVg9eQo+ICtDT05GSUdfVVNCX0VUSEVSX0FT
SVg4ODE3OT15Cj4gK0NPTkZJR19VU0JfRVRIRVJfTUNTNzgzMD15Cj4gK0NPTkZJR19VU0JfRVRI
RVJfUlRMODE1Mj15Cj4gK0NPTkZJR19VU0JfRVRIRVJfU01TQzk1WFg9eQo+ICtDT05GSUdfRVJS
Tk9fU1RSPXkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
