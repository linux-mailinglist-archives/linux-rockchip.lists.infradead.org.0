Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19AFFDB86
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 Nov 2019 11:38:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikdO7u/Iaibq3vZQVx5sBuOKP6CWeurZzVrSHtZ9gJA=; b=M0wlXQ+lfYjUvc
	6ETaakMv+3/DHUugu54HsUJqF6C2bTE2axVOArPSVKeg/zwGfA3oYU1Gb/U79l1Anfpvs4eTB/BuG
	barFCt1hSKdelhxX62/gZsOR7wJQTwTsggOxz4B9a9++zXd+wV29kQpEoGStJuDuLSzIyGqfZkmIU
	mV3DH+t9YEMKlHFzBWc+bozkX4otYjA+LznwGkZHxTlCHmsOMQmOpX6htPkB30BH7CaFyUeOzrha2
	tNmpEFpdOqo4kZUNuibuffi6+uktbbkAvYxBmBLl6CkFjHYcfP4y355YtGDj0PWMHWNq7AnJdtR/m
	7iMdgNRHeI4fW8r+eF2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYzc-0007cX-WF; Fri, 15 Nov 2019 10:38:21 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYzV-0007YF-Pu; Fri, 15 Nov 2019 10:38:18 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iVYzM-0006WU-0U; Fri, 15 Nov 2019 11:38:04 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xAFAbwL4024948
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Fri, 15 Nov 2019 11:37:59 +0100
Subject: Re: arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
To: Heiko Stuebner <heiko@sntech.de>
References: <20190301153348.29870-1-christoph.muellner@theobroma-systems.com>
 <20190301153348.29870-2-christoph.muellner@theobroma-systems.com>
 <367bf78a-f079-f0b4-68fe-52c86823c174@fivetechno.de>
 <2766673.iMURPl8gB5@phil>
From: Markus Reichl <m.reichl@fivetechno.de>
Autocrypt: addr=m.reichl@fivetechno.de; prefer-encrypt=mutual; keydata=
 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
 eD/Xv4SsK2JTO4nkQYw8
Organization: five technologies GmbH
Message-ID: <69472c06-8b21-c3d8-acad-1a0a292c0fa2@fivetechno.de>
Date: Fri, 15 Nov 2019 11:37:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <2766673.iMURPl8gB5@phil>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1573814293;
 af7cf73c; 
X-HE-SMSGID: 1iVYzM-0006WU-0U
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_023814_006339_7ABFD68B 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Jeffy Chen <jeffy.chen@rock-chips.com>, robh+dt@kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 shawn.lin@rock-chips.com, Brian Norris <briannorris@chromium.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Randy Li <ayaka@soulik.info>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpBbSAxNC4xMS4xOSB1bSAxNDoxMCBzY2hyaWViIEhlaWtvIFN0dWVibmVyOgo+
IEhpIE1hcmt1cywKPiAKPiAkc3ViamVjdCBpcyBtaXNzaW5nIHRoZSBbUEFUQ0hdIHByZWZpeAp3
aWxsIGZpeC4KPiAKPiBBbSBNb250YWcsIDExLiBOb3ZlbWJlciAyMDE5LCAxMDo1MTowNCBDRVQg
c2NocmllYiBNYXJrdXMgUmVpY2hsOgo+PiBXb3JraW5nIHdpdGggcm9vdGZzIG9uIHR3byAxMjhH
QiBtbWNzIG9uIHJrMzM5OS1yb2MtcGMuCj4+IAo+PiBPbmUgKG1tYyBuYW1lIDEyOEc3Miwgb25l
IHNjcmV3IGhvbGUpIHdvcmtzIGZpbmUgaW4gSFM0MDAgbW9kZS4KPj4gT3RoZXIgKG1tYyBuYW1l
IERKTkI0UiwgZmlyZWZseSBvbiBwY2IsIHR3byBzY3JldyBob2xlcykgZ2V0cyBsb3RzIG9mCj4+
IG1tYzE6ICJydW5uaW5nIENRRSByZWNvdmVyeSIsIGV2ZW4gaGFuZ3Mgd2l0aCBkYW1hZ2VkIGZz
LAo+PiB3aGVuIHJ1bm5pbmcgdW5kZXIgaGVhdnkgbG9hZCwgZS5nLiBjb21waWxpbmcga2VybmVs
Lgo+PiBCb3RoIHJ1biBmaW5lIHdpdGggSFMyMDAuCj4+IAo+PiBEaXNhYmxpbmcgQ1Egd2l0aCBw
YXRjaCBtbWM6IGNvcmU6IEFkZCBNTUMgQ29tbWFuZCBRdWV1ZSBTdXBwb3J0IGtlcm5lbCBwYXJh
bWV0ZXIgWzBdIGRpZCBub3QgaGVscC4KPj4gWzBdIGh0dHBzOi8vZ2l0bGFiLmNvbS9heXVmYW4t
cmVwb3Mvcm9jazY0L2xpbnV4LW1haW5saW5lLWtlcm5lbC9jb21taXQvNTRlMjY0MTU0Yjg3ZGZl
MzJhODM1OWIyNzI2ZTJkNTYxMWFkYmFmMwo+IAo+IEknbSBob3BpbmcgZm9yIHNvbWUgaW5wdXQg
ZnJvbSBvdGhlciBwZW9wbGUgaW4gQ2MgYnV0IHlvdXIgbWFpbCBoZWFkZXJzCj4gYWxzbyByZWZl
cmVuY2VkIHRoZSBkcml2ZS1pbXBlbmRhbmNlIHNlcmllcyBmcm9tIENocmlzdG9waCBbMF0sIHdo
aWNoCj4gaXQgc2VlbXMgd2UgbmVlZCB0byBwb2tlIHRoZSBwaHkgbWFpbnRhaW5lciBhZ2Fpbi4K
PiAKPiBEaWQgeW91IGNoZWNrIGlmIGNoYW5naW5nIHRoZSBpbXBlZGFuY2UgaGVscGVkIChsaWtl
IHRoZSBzaWduYWwgZGFtcGVuaW5nCj4gUGhpbGlwcCBkZXNjcmliZWQgaW4gb25lIG9mIHRoZSBy
ZXBsaWVzIHRoZXJlKS4KCmNoZWNrZWQgd2l0aAoKJmVtbWNfcGh5IHsKKyAgICAgICBkcml2ZS1p
bXBlZGFuY2Utb2htID0gPDMzPjsKCmdpdmVzIG5vIGltcHJvdmVtZW50OgpbICAgIDEuNjg4NTkw
XSBtbWMxOiBDUUhDSSB2ZXJzaW9uIDUuMTAKWyAgICAxLjcxNDE1N10gbW1jMTogU0RIQ0kgY29u
dHJvbGxlciBvbiBmZTMzMDAwMC5zZGhjaSBbZmUzMzAwMDAuc2RoY2ldIHVzaW5nIEFETUEKWyAg
ICAxLjc5NzgyMl0gbW1jMTogQ29tbWFuZCBRdWV1ZSBFbmdpbmUgZW5hYmxlZApbICAgIDEuNzk4
MjU5XSBtbWMxOiBuZXcgSFM0MDAgRW5oYW5jZWQgc3Ryb2JlIE1NQyBjYXJkIGF0IGFkZHJlc3Mg
MDAwMQpbICAgIDEuODAwMDM0XSBtbWNibGsxOiBtbWMxOjAwMDEgREpOQjRSIDExNiBHaUIgClsg
ICAgMS44MDA2NDNdIG1tY2JsazFib290MDogbW1jMTowMDAxIERKTkI0UiBwYXJ0aXRpb24gMSA0
LjAwIE1pQgpbICAgIDEuODAxNDA4XSBtbWNibGsxYm9vdDE6IG1tYzE6MDAwMSBESk5CNFIgcGFy
dGl0aW9uIDIgNC4wMCBNaUIKWyAgICAxLjgwMjg4Nl0gbW1jYmxrMXJwbWI6IG1tYzE6MDAwMSBE
Sk5CNFIgcGFydGl0aW9uIDMgNC4wMCBNaUIsIGNoYXJkZXYgKDI0NjowKQouLi4KWyAgMTAwLjEx
ODAyMF0gbW1jMTogcnVubmluZyBDUUUgcmVjb3ZlcnkKWyAgMTAwLjEyMDg5MF0gLS0tLS0tLS0t
LS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tClsgIDEwMC4xMjEzMTBdIG1tYzE6IGNxaGNpOiBz
cHVyaW91cyBUQ04gZm9yIHRhZyAyClsgIDEwMC4xMjE4MDJdIFdBUk5JTkc6IENQVTogMCBQSUQ6
IDIzMiBhdCBkcml2ZXJzL21tYy9ob3N0L2NxaGNpLmM6NzI5IGNxaGNpX2lycSsweDMwYy8weDQ4
MApbICAxMDAuMTIyNTMwXSBNb2R1bGVzIGxpbmtlZCBpbjogcmZraWxsIHNuZF9zb2NfaGRtaV9j
b2RlYyBkd19oZG1pX2kyc19hdWRpbyBkd19oZG1pX2NlYyByb2NrY2hpcGRybSBjcmN0MTBkaWZf
Y2UgYW5hbG9naXhfZHAgZHdfbWlwaV9kc2kgc25kX3NvY19zaW1wbGVfY2FyZCBkd19oZG1pIGNl
YyBzbmRfc29jX3JvY2tjaGlwX2kycyBzbmRfc29jX3NpbXBsZV9jYXJkX3V0aWxzIHBhbmZyb3N0
IHNuZF9zb2Nfcm9ja2NoaXBfcGNtIGRybV9rbXNfaGVscGVyIHNuZF9zb2NfY29yZSBncHVfc2No
ZWQgc25kX3BjbV9kbWFlbmdpbmUgc3lzY29weWFyZWEgc3lzZmlsbHJlY3Qgc3lzaW1nYmx0IHNu
ZF9wY20gZmJfc3lzX2ZvcHMgc25kX3RpbWVyIHNuZCBkcm0gc291bmRjb3JlIGZ1c2IzMDIgdGNw
bSB0eXBlYyByb2NrY2hpcF9zYXJhZGMgZHJtX3BhbmVsX29yaWVudGF0aW9uX3F1aXJrcyBpcHY2
ClsgIDEwMC4xMjYwOTddIENQVTogMCBQSUQ6IDIzMiBDb21tOiBrd29ya2VyLzA6MkggTm90IHRh
aW50ZWQgNS40LjAtcmM3LW5leHQtMjAxOTExMTItMDAwMDctZzJhZDE3N2M3Nzc0OSAjNDQKWyAg
MTAwLjEyNjk0Nl0gSGFyZHdhcmUgbmFtZTogRmlyZWZseSBST0MtUkszMzk5LVBDIEJvYXJkIChE
VCkKWyAgMTAwLjEyNzQ1NF0gV29ya3F1ZXVlOiBrYmxvY2tkIGJsa19tcV9ydW5fd29ya19mbgpb
ICAxMDAuMTI3ODg1XSBwc3RhdGU6IDIwMDAwMDg1IChuekN2IGRhSWYgLVBBTiAtVUFPKQpbICAx
MDAuMTI4MzE4XSBwYyA6IGNxaGNpX2lycSsweDMwYy8weDQ4MApbICAxMDAuMTI4NjYwXSBsciA6
IGNxaGNpX2lycSsweDMwYy8weDQ4MApbICAxMDAuMTI4OTk3XSBzcCA6IGZmZmY4MDAwMTAwMDNk
MTAKWyAgMTAwLjEyOTI5OF0geDI5OiBmZmZmODAwMDEwMDAzZDEwIHgyODogMDAwMDAwMDAwMDAw
MDAwMCAKWyAgMTAwLjEyOTc3N10geDI3OiAwMDAwMDAwMDAwMDAwMDAxIHgyNjogZmZmZjgwMDAx
MDhlMGZlOCAKWyAgMTAwLjEzMDI1N10geDI1OiBmZmZmMDAwMGY1YWU1Yzk4IHgyNDogZmZmZjgw
MDAxMGI3ZTFhOCAKWyAgMTAwLjEzMDczN10geDIzOiBmZmZmODAwMDEwYjE5OGM4IHgyMjogZmZm
ZjAwMDBmNWE4MDAwMCAKWyAgMTAwLjEzMTIxNl0geDIxOiAwMDAwMDAwMDAwMDAwMDAyIHgyMDog
MDAwMDAwMDAwMDAwMDAwMiAKWyAgMTAwLjEzMTY5NF0geDE5OiBmZmZmMDAwMGY1YWU1YzgwIHgx
ODogMDAwMDAwMDAwMDAwMDAxMCAKWyAgMTAwLjEzMjE3M10geDE3OiAwMDAwMDAwMDAwMDAwMDAw
IHgxNjogMDAwMDAwMDAwMDAwMDAwMCAKWyAgMTAwLjEzMjY1M10geDE1OiBmZmZmZmZmZmZmZmZm
ZmZmIHgxNDogZmZmZjgwMDAxMGIxOThjOCAKWyAgMTAwLjEzMzEzMl0geDEzOiBmZmZmODAwMDkw
MDAzYTc3IHgxMjogZmZmZjgwMDAxMDAwM2E3ZiAKWyAgMTAwLjEzMzYxMl0geDExOiBmZmZmODAw
MDEwYjMwMDAwIHgxMDogZmZmZjgwMDAxMDAwM2EwMCAKWyAgMTAwLjEzNDA5Ml0geDkgOiAwMDAw
MDAwMGZmZmZmZmQwIHg4IDogZmZmZjgwMDAxMDQ1YTA2MCAKWyAgMTAwLjEzNDU3MV0geDcgOiAw
MDAwMDAwMDAwMDAwMjVmIHg2IDogZmZmZjgwMDAxMGI5NzllMiAKWyAgMTAwLjEzNTA1MF0geDUg
OiAwMDAwMDAwMDAwMDAwMDAxIHg0IDogMDAwMDAwMDAwMDAwMDAwMCAKWyAgMTAwLjEzNTUyOV0g
eDMgOiAwMDAwMDAwMDAwMDAwMDAwIHgyIDogMDAwMDAwMDAwMDAwMDAwMCAKWyAgMTAwLjEzNjAw
N10geDEgOiBlMDA1OTg5ZGE0NmYyNTAwIHgwIDogMDAwMDAwMDAwMDAwMDAwMCAKWyAgMTAwLjEz
NjQ4Nl0gQ2FsbCB0cmFjZToKWyAgMTAwLjEzNjcxOV0gIGNxaGNpX2lycSsweDMwYy8weDQ4MApb
ICAxMDAuMTM3MDMzXSAgc2RoY2lfYXJhc2FuX2NxaGNpX2lycSsweDU4LzB4ODAKWyAgMTAwLjEz
NzQzMF0gIHNkaGNpX2lycSsweGI4LzB4YmI4ClsgIDEwMC4xMzc3NDJdICBfX2hhbmRsZV9pcnFf
ZXZlbnRfcGVyY3B1KzB4NmMvMHgxNzAKWyAgMTAwLjEzODE2OV0gIGhhbmRsZV9pcnFfZXZlbnRf
cGVyY3B1KzB4MzQvMHg4OApbICAxMDAuMTM4NTc1XSAgaGFuZGxlX2lycV9ldmVudCsweDQ0LzB4
YzgKWyAgMTAwLjEzODkyN10gIGhhbmRsZV9mYXN0ZW9pX2lycSsweGI0LzB4MTYwClsgIDEwMC4x
MzkzMDJdICBnZW5lcmljX2hhbmRsZV9pcnErMHgyNC8weDM4ClsgIDEwMC4xMzk2NzBdICBfX2hh
bmRsZV9kb21haW5faXJxKzB4NjAvMHhiOApbICAxMDAuMTQwMDQ1XSAgZ2ljX2hhbmRsZV9pcnEr
MHhjMC8weDE1OApbICAxMDAuMTQwMzg5XSAgZWwxX2lycSsweGI4LzB4MTgwClsgIDEwMC4xNDA2
ODRdICBfcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUrMHgyMC8weDQ4ClsgIDEwMC4xNDExMTld
ICBzZGhjaV9jcWVfZW5hYmxlKzB4ZWMvMHgxMDgKWyAgMTAwLjE0MTQ3OF0gIHNkaGNpX2FyYXNh
bl9jcWVfZW5hYmxlKzB4NGMvMHg1OApbICAxMDAuMTQxODgwXSAgY3FoY2lfcmVxdWVzdCsweDJk
MC8weDUwMApbICAxMDAuMTQyMjI2XSAgbW1jX2NxZV9zdGFydF9yZXErMHg1MC8weDYwClsgIDEw
MC4xNDI1ODVdICBtbWNfYmxrX21xX2lzc3VlX3JxKzB4NDMwLzB4Nzk0ClsgIDEwMC4xNDI5NzRd
ICBtbWNfbXFfcXVldWVfcnErMHgxMDQvMHgyNzAKWyAgMTAwLjE0MzMzMl0gIGJsa19tcV9kaXNw
YXRjaF9ycV9saXN0KzB4YTgvMHg1ODAKWyAgMTAwLjE0Mzc0Nl0gIGJsa19tcV9zY2hlZF9kaXNw
YXRjaF9yZXF1ZXN0cysweGY0LzB4MWQ4ClsgIDEwMC4xNDQyMTBdICBfX2Jsa19tcV9ydW5faHdf
cXVldWUrMHhhYy8weDEyMApbICAxMDAuMTQ0NjA1XSAgYmxrX21xX3J1bl93b3JrX2ZuKzB4MWMv
MHgyOApbICAxMDAuMTQ0OTc0XSAgcHJvY2Vzc19vbmVfd29yaysweDFlMC8weDM1OApbICAxMDAu
MTQ1MzQwXSAgd29ya2VyX3RocmVhZCsweDQwLzB4NDg4ClsgIDEwMC4xNDU2NzldICBrdGhyZWFk
KzB4MTE4LzB4MTIwClsgIDEwMC4xNDU5NzddICByZXRfZnJvbV9mb3JrKzB4MTAvMHgxOApbICAx
MDAuMTQ2MzAyXSAtLS1bIGVuZCB0cmFjZSA2Mjc3MDk5YWQ3NTFlZDY0IF0tLS0KWyAgMTAwLjIx
MzgxNV0gbW1jMTogcnVubmluZyBDUUUgcmVjb3ZlcnkKWyAgMTAwLjQxMzkzM10gbW1jMTogcnVu
bmluZyBDUUUgcmVjb3ZlcnkKCj4gCj4gWzBdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cGF0Y2gvMTA4MzU1NjcvCj4gbW9zdCBjdXJyZW50IHYyIGl0IHNlZW1zIGlzIGh0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA4NDI0MjEvCj4gCj4+IFRoZXJlZm9yZSBJIHByb3Bv
c2UgdG8gZGlzYWJsZSBIUzQwMCBtb2RlIG9uIHJvYy1wYyBmb3Igbm93Lgo+IAo+IEhvcGluZyBm
b3IgbW9yZSBpbnB1dCA6LSkKCkhvcGluZywgdG9vLgoKCkdydcOfLAotLSAKTWFya3VzIFJlaWNo
bAo+IAo+IAo+IEhlaWtvCj4gCj4gCj4+IFNpZ25lZC1vZmYtYnk6IE1hcmt1cyBSZWljaGwgPG0u
cmVpY2hsQGZpdmV0ZWNobm8uZGU+Cj4+IC0tLQo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jLXBjLmR0c2kgfCAyIC0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBkZWxl
dGlvbnMoLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1yb2MtcGMuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXJvYy1wYy5kdHNpCj4+IGluZGV4IDI5YTUwYTA4M2M0Mi4uMzNkZjk1ZTM4NGI0IDEwMDY0NAo+
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+
PiBAQCAtNjYwLDggKzY2MCw2IEBACj4+ICAKPj4gICZzZGhjaSB7Cj4+ICAJYnVzLXdpZHRoID0g
PDg+Owo+PiAtCW1tYy1oczQwMC0xXzh2Owo+PiAtCW1tYy1oczQwMC1lbmhhbmNlZC1zdHJvYmU7
Cj4+ICAJbm9uLXJlbW92YWJsZTsKPj4gIAlzdGF0dXMgPSAib2theSI7Cj4+ICB9Owo+PiAKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
