Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3A811A950
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Dec 2019 11:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqYKKL9hmottjWPh+gKKNyLl0gJ2rHsAdAtSxIqkA6E=; b=cuX+SIKmHkKMPy
	AP12rob0bUI2KPXqsO9/FNu9t4GDLorfQv+I8dc5L8m6mdN5dI7+n1DPwtJqJ1uVEnkbGFtYXDCu0
	s8hsPYgiPYlZPaIDS/LHZKBsdqLM42Gkf2/WgmhD4FjSzYEQn1l7AfPVCyh4w9DEGyMqzr5zG8hNS
	B7Y1RYiMjpfkEg2yo1wtWBJidpI0YjqFv7v1Kod5mRYtGV9TJbJRnVR7hFQTe3tbxgAoztSgGzCcE
	FOaquQ15Qots+7m9cKgfTaDtovSOlSwTL5R6K7lHA8aWyBeoePI7okGi8ZXIMe8cG7L7EEvFxkIdz
	vXP/5EQFLm6AlIUDHNeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezeb-0003bZ-WD; Wed, 11 Dec 2019 10:55:38 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezeX-0003b1-Ln; Wed, 11 Dec 2019 10:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576061722;
 bh=qUkEqyozqakSIZMb6sQbu2kxLtJODzvqWpEHLHr47Ms=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=S/JI/j73c3QcQdg4Hqr1W5gyW8LQo7j3UFzOmVUd2t2I5jmgwXfpIy5mgC2lCQTl2
 KJzV17Tv4L/BgMdSI7yoDqi3Oz5bZeXkEqIMH2iIQgvAT6wdu2UeufCA8seFTHiH4e
 tpjw0TXvRCq+w2UbYIUqsupPE4FR+YHed7O8TPnY=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.138.97]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M5Oct-1hnj4H0Z5T-00zZKa; Wed, 11
 Dec 2019 11:55:22 +0100
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
To: Anand Moon <linux.amoon@gmail.com>
References: <20191209115746.12953-1-smoch@web.de>
 <CANAwSgS9ixhyOE2QYQ3CetA=BUVebMan2=9xBKF=U3YXAwCHNQ@mail.gmail.com>
 <6e380c0a-007d-22db-af26-19defaf1ae83@fivetechno.de>
 <8377b8d6-8b4d-0605-4c61-fb61b4aebf91@web.de>
 <CANAwSgQhPtBy-npPJgOAqieF7doGmaX3U35m95ktR2qAWVbf5w@mail.gmail.com>
From: Soeren Moch <smoch@web.de>
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d743fb6b-74ab-b72b-3b68-e0acd03987f8@web.de>
Date: Wed, 11 Dec 2019 11:55:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CANAwSgQhPtBy-npPJgOAqieF7doGmaX3U35m95ktR2qAWVbf5w@mail.gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:cpOH+2/RFSD9bmBKDG9AhZZHpAtStSBZBD++A4vSMI97lW1bO+Y
 bzmVmcVWPQu6VlL6LBpCo9/f6ghpUoOdsckrveg6LkqQFqbuP/Vu5noqk6bq1WyWfFIYv6S
 PJsc0sfyXYHqTQPXogsbmfuZJOsBaeBZIRmEAeQ7DEqZ93BfS8y/ev1LNbFCcKVP7qGSNTC
 RU2yGvuIav7aVunLyhrwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uMdms4wHem0=:R2k+SCtx5YTl3fLDUGrWw5
 OWT04+1+3/J1EDyi0O6LR8tkcIWcuflWcRT616Rky1pWu6wE1DSaCLOOiEcb9zORjGrdP0tjt
 zqbAJerDylox/EJi7UpHY8NZUgLAb1ZguIWZ36IQFV/QZVOODLNrX8LS4nb74rjSYQRXbza1j
 G/b0eMgg/uszJEdnZ8I0b7zcnnnaN/h5zV6Kj4yS9JugB5xfQcxQcyP/L3lPI1fxr8thlmg5s
 pGwNGQYPTOaOX4rSNy1GoPvmZQuL/qPI0DqWGkqefYKpz0bYGu519DQyWr56c+1gr5SjDysBu
 e1r8prlNf+gY9TlyPyHUIGpyjeAX1lH3ftfPiaUbklw7QdghG6Gp9wLYnzFoShlnYa0v1MhKN
 iQWjAt/OkP510WOpEzXFE4t2tJKNd8d7XO76UhfTeUAGVGajaML1iNizFXh4emf43c86NR4NF
 mA8zO0j9Xe1vP8rA1I5FpN8GDYWojVyoZCseFyd7Aur5WAtJax8MBqIXm3WxtFjiJsRTVY5Sn
 ejL7Jq0QkXigoZ8fjx2jDEB5Bi7q3uF9TcEQaG1ESLDYB/iX5fzOQ4gcCk2XpQANrUYK9IXZK
 b/IHxOv6YBsodiwOcW/fnZnkb6IaBbejNnMic6a/O/rjPfsX2XHT77/nqIj7bAgbeTjWu3Rbl
 +QoSxTZxo4qr4dAFbUD/jUqdr/j91e4XvDInsx+ZhCNu7AqYvo5PDwIstrh38X0EPrANq1Jic
 lLw/QzOxYwnsEC4VDloeULrYTXg0CbBQWV3508OWKJGMBJVu04s+iHOnvXmMx6H2Ad1m36yXq
 TydQBznWsOw3yOk+4afP/Q+f4+vOm9fp6llPnzxBqxyAdqoFV8StT6Xb8r5uxNj3VYy8Q3FHA
 pGbotumnHsxo/8ZqJ71gfOtKX3h3VbOYh4eS/Deq9e6AD1Ik4aYFlwroUvWhWUqzxXGHOOSsT
 6S7CjlsAkkmuqRcuJGARUoevCe71pmLsnNWi+9aRLlyA9w6qGBIOQnZjdD976ODXY8Ih5IVv2
 4tl7omWExTT1FR96/Xm9kMIyC0Hs77Hs8ri2NY+OBlP+Lrs3vpO9P4o3g2CBcmieJBzp1qWrE
 pDYm6GvPGlWh/eLfSTU8y0B572sWCKYb+fy3H9jNub7+ASJNKbaCtDD/lpQsfpjvKuOBM9zOQ
 o43Wh03xG9p4AHZxKqCoSiD9N0I4nnwY8CKTItG5wL5a5bDTmobqvX79Gqu5HynLMIPuTc+C9
 0fROnGSzNHx7vHnSVHlokgSYfa9YbzNdpK/eEZsggzF1olZlR7mLdPgi91Ew=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_025534_051265_5B6EBE91 
X-CRM114-Status: GOOD (  22.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiAxMS4xMi4xOSAwMzowMCwgQW5hbmQgTW9vbiB3cm90ZToKPiBoaSBTb2VyZW4sCj4KPiBP
biBUdWUsIDEwIERlYyAyMDE5IGF0IDIyOjEwLCBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRlPiB3
cm90ZToKPj4KPj4KPj4gT24gMTAuMTIuMTkgMTM6NTUsIE1hcmt1cyBSZWljaGwgd3JvdGU6Cj4+
PiBIaSBBbmFuZCwKPj4+Cj4+PiBBbSAxMC4xMi4xOSB1bSAxMzo0MiBzY2hyaWViIEFuYW5kIE1v
b246Cj4+Pj4gSGkgU29lcmVuLAo+Pj4+Cj4+Pj4gT24gTW9uLCA5IERlYyAyMDE5IGF0IDE3OjI4
LCBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRlPiB3cm90ZToKPj4+Pj4gV2l0aCB0aGUgZGV2aWNl
IHRyZWUgcHJvcGVydHkgInJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyIiB3ZQo+Pj4+
PiBleHBsaWNpdGx5IHJlcXVlc3QgdG8gdXNlIHRoaXMgUE1JQyB0byBwb3dlciBvZmYgdGhlIHN5
c3RlbS4gU28gYWx3YXlzCj4+Pj4+IHJlZ2lzdGVyIG91ciBwb3dlcm9mZiBmdW5jdGlvbiwgZXZl
biBpZiBzb21lIG90aGVyIGhhbmRsZXIgKHByb2JhYmx5Cj4+Pj4+IFBTQ0kgcG93ZXJvZmYpIHdh
cyByZWdpc3RlcmVkIGJlZm9yZS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogU29lcmVuIE1v
Y2ggPHNtb2NoQHdlYi5kZT4KPj4+Pj4gLS0tCj4+Pj4+IENjOiBMZWUgSm9uZXMgPGxlZS5qb25l
c0BsaW5hcm8ub3JnPgo+Pj4+PiBDYzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4K
Pj4+Pj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+PiBDYzog
bGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+PiBDYzogbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZwo+Pj4+PiAtLS0KPj4+Pj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgfCAx
MSArKy0tLS0tLS0tLQo+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOSBk
ZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3JrODA4LmMg
Yi9kcml2ZXJzL21mZC9yazgwOC5jCj4+Pj4+IGluZGV4IGE2OWE2NzQyZWNkYy4uNjE2ZTQ0ZTdl
Zjk4IDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL21mZC9yazgwOC5jCj4+Pj4+ICsrKyBiL2Ry
aXZlcnMvbWZkL3JrODA4LmMKPj4+Pj4gQEAgLTU1MCw3ICs1NTAsNyBAQCBzdGF0aWMgaW50IHJr
ODA4X3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCj4+Pj4+ICAgICAgICAgY29uc3Qg
c3RydWN0IG1mZF9jZWxsICpjZWxsczsKPj4+Pj4gICAgICAgICBpbnQgbnJfcHJlX2luaXRfcmVn
czsKPj4+Pj4gICAgICAgICBpbnQgbnJfY2VsbHM7Cj4+Pj4+IC0gICAgICAgaW50IHBtX29mZiA9
IDAsIG1zYiwgbHNiOwo+Pj4+PiArICAgICAgIGludCBtc2IsIGxzYjsKPj4+Pj4gICAgICAgICB1
bnNpZ25lZCBjaGFyIHBtaWNfaWRfbXNiLCBwbWljX2lkX2xzYjsKPj4+Pj4gICAgICAgICBpbnQg
cmV0Owo+Pj4+PiAgICAgICAgIGludCBpOwo+Pj4+PiBAQCAtNjc0LDE2ICs2NzQsOSBAQCBzdGF0
aWMgaW50IHJrODA4X3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCj4+Pj4+ICAgICAg
ICAgICAgICAgICBnb3RvIGVycl9pcnE7Cj4+Pj4+ICAgICAgICAgfQo+Pj4+Pgo+Pj4+PiAtICAg
ICAgIHBtX29mZiA9IG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwKPj4+Pj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAicm9ja2NoaXAsc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIiKTsK
Pj4+Pj4gLSAgICAgICBpZiAocG1fb2ZmICYmICFwbV9wb3dlcl9vZmYpIHsKPj4+Pj4gKyAgICAg
ICBpZiAob2ZfcHJvcGVydHlfcmVhZF9ib29sKG5wLAo+Pj4+PiAicm9ja2NoaXAsc3lzdGVtLXBv
d2VyLWNvbnRyb2xsZXIiKSkgewo+Pj4+PiAgICAgICAgICAgICAgICAgcms4MDhfaTJjX2NsaWVu
dCA9IGNsaWVudDsKPj4+Pj4gICAgICAgICAgICAgICAgIHBtX3Bvd2VyX29mZiA9IHJrODA4LT5w
bV9wd3JvZmZfZm47Cj4+Pj4+IC0gICAgICAgfQo+Pj4+PiAtCj4+Pj4+IC0gICAgICAgaWYgKHBt
X29mZiAmJiAhcG1fcG93ZXJfb2ZmX3ByZXBhcmUpIHsKPj4+Pj4gLSAgICAgICAgICAgICAgIGlm
ICghcms4MDhfaTJjX2NsaWVudCkKPj4+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgcms4MDhf
aTJjX2NsaWVudCA9IGNsaWVudDsKPj4+Pj4gICAgICAgICAgICAgICAgIHBtX3Bvd2VyX29mZl9w
cmVwYXJlID0gcms4MDgtPnBtX3B3cm9mZl9wcmVwX2ZuOwo+Pj4+PiAgICAgICAgIH0KPj4+Pj4K
Pj4+PiBJIGdhdmUgdGhpcyBhIHRyeSBvbiBteSBSb2NrOTYwIGFuZCBPZHJvaWQgTjEKPj4+PiBi
b3RoIGdvdCBrZXJuZWwgcGFuaWMgYmVsb3cuCj4+PiBJIHNlZSB0aGUgc2FtZSBvbiByazMzOTkt
cm9jLXBjLgo+PiBUaGlzIGlzIG5vIHBhbmljLCBpdCdzIGEgaGFybWxlc3Mgd2FybmluZy4KPiBP
ayBidXQgbXkgZGV2aWNlIGRvIG5vdCBjb21lIHVwIGNsZWFubHkgYWZ0ZXIgdGhhdCwgaXQgZ2V0
IHN0dWNrIGluCj4gdS1ib290IGluIG5leHQgYm9vdC4gCkkgZG8gbm90IGtub3cgUm9jazk2MCBh
bmQgT2Ryb2lkIE4xLCBzbyB1bmZvcnR1bmF0ZWx5IEkgY2Fubm90IGRlYnVnCnlvdXIgdS1ib290
IHByb2JsZW0gb24gdGhlc2UgYm9hcmRzLiBGcm9tIHdoYXQgeW91IHdyb3RlIHRoZSBwb3dlcm9m
ZgphcHBhcmVudGx5IHdvcmtzIHdpdGggdGhpcyBwYXRjaCwgSSBoYXZlIG5vIGlkZWEgd2hhdCBj
b3VsZCBiZSBhCnByb2JsZW0uIEFmdGVyIGEgY29tcGxldGUgcG93ZXItb2ZmIEkgd291bGQgZXhw
ZWN0IGEgY2xlYW4gY29sZCBib290LgpBbmQgdGhhdCAncyB3aGF0IEkgc2VlIG9uIG15IFJvY2tQ
cm82NCBib2FyZC4KClRoaXMgcGF0Y2ggaXMgYWJvdXQgZG9pbmcgYSBQTUlDIHBvd2Vyb2ZmIHdo
ZW4gdGhpcyBtZXRob2QgaXMgcmVxdWVzdGVkCmluIHRoZSBkZXZpY2V0cmVlLiBJZiB0aGlzIG1l
dGhvZCBkb2VzIG5vdCB3b3JrIGZvciB5b3VyIGJvYXJkcywgeW91CnByb2JhYmx5IHNob3VsZCBy
ZW1vdmUgdGhlICJyb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlciIgcHJvcGVydHkKYW5k
IHVzZSBQU0NJIHBvd2Vyb2ZmIG9yIHdoYXRldmVyIGlzIGRlc2lyZWQgb24geW91ciBib2FyZHMu
IFRoaXMgcGF0Y2gKZG9lcyBub3QgY2hhbmdlIF9ob3dfIFBNSUMgcG93ZXJvZmYgaXMgZG9uZSwg
b25seSBfdGhhdF8gdGhpcyBtZXRob2QgaXMKdXNlZCB3aGVuIGV4cGxpY2l0bHkgcmVxdWVzdGVk
Lgo+Cj4+IFRoZSBpMmMgY29yZSBub3dhZGF5cyBleHBlY3RzIGEgc3BlY2lhbGx5IG1hcmtlZCBp
MmMgdHJhbnNmZXIgZnVuY3Rpb24KPj4gbGF0ZSBpbiB0aGUgcG93ZXJkb3duIGN5Y2xlOgo+IFlv
dSBjYW4gbG9vayBpbnRvIHNpbWlsYXIgY29tbWl0Lgo+IGQ3ODUzMzRhMGQ1ZGVmZjMwYTQ4N2M3
NDMyNGI4NDJkMjE3OTU1M2QgKG1mZDogczJtcHMxMTogQWRkIG1hbnVhbAo+IHNodXRkb3duIG1l
dGhvZCBmb3IgT2Ryb2lkIFhVMykKSSBjYW5ub3Qgc2VlIHdoYXQgc2hvdWxkIGJlIHNpbWlsYXIg
aW4gdGhpcyBwYXRjaC4gVGhpcyBwYXRjaCBpcyBhYm91dCBhCnRvdGFsbHkgZGlmZmVyZW50IFBN
SUMgYW5kIGhvdyB0aGlzIG5lZWRzIHRvIGJlIHByb2dyYW1tZWQgdG8gd29yawpwcm9wZXJseSBv
biBhbm90aGVyIGRpZmZlcmVudCBib2FyZC4KClNvZXJlbgo+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5j
Cj4+IGluZGV4IDFhMzMwMDdiMDNlOS4uY2VjMTE1ZTBhZmE0IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwo+PiArKysgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJj
LXJrM3guYwo+PiBAQCAtMTEyNiw2ICsxMTI2LDcgQEAgc3RhdGljIHUzMiByazN4X2kyY19mdW5j
KHN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcCkKPj4KPj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJj
X2FsZ29yaXRobSByazN4X2kyY19hbGdvcml0aG0gPSB7Cj4+ICAgICAgLm1hc3Rlcl94ZmVyICAg
ICAgICA9IHJrM3hfaTJjX3hmZXIsCj4+ICsgICAgLm1hc3Rlcl94ZmVyX2F0b21pYyAgICA9IHJr
M3hfaTJjX3hmZXIsIC8qIHVzYWJsZSBmb3IgUE1JQyBwb3dlcm9mZiAqLwo+PiAgICAgIC5mdW5j
dGlvbmFsaXR5ICAgICAgICA9IHJrM3hfaTJjX2Z1bmMsCj4+ICB9Owo+Pgo+PiAtLS0KPj4gSXQg
aXMgb25seSB1c2VkIGZvciBwb3dlcmRvd24uIFRoZSByZWd1bGFyIGkyYyB4ZmVyIGZ1bmN0aW9u
IHdvcmtzLgo+Pgo+PiBIZWlrbywgc2hvdWxkIEkgc2VuZCBhIGZvcm1hbCBwYXRjaCBmb3IgdGhh
dD8KPj4KPj4gU29lcmVuCj4+Cj4+Pj4gWyAgIDU4LjMwNTg2OF0geGhjaS1oY2QgeGhjaS1oY2Qu
MC5hdXRvOiBVU0IgYnVzIDUgZGVyZWdpc3RlcmVkCj4+Pj4gWyAgIDU4LjMwNjc0N10gcmVib290
OiBQb3dlciBkb3duCj4+Pj4gWyAgIDU4LjMwNzEwNl0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBd
LS0tLS0tLS0tLS0tCj4+Pj4gWyAgIDU4LjMwNzUxMF0gTm8gYXRvbWljIEkyQyB0cmFuc2ZlciBo
YW5kbGVyIGZvciAnaTJjLTAnCj4+Pj4gWyAgIDU4LjMwODAwN10gV0FSTklORzogQ1BVOiAwIFBJ
RDogMSBhdCBkcml2ZXJzL2kyYy9pMmMtY29yZS5oOjQxCj4+Pj4gaTJjX3RyYW5zZmVyKzB4ZTQv
MHhmOAo+Pj4+IFsgICA1OC4zMDg2OTZdIE1vZHVsZXMgbGlua2VkIGluOiBzbmRfc29jX2hkbWlf
Y29kZWMgZHdfaGRtaV9pMnNfYXVkaW8KPj4+PiByb2NrY2hpcGRybSBhbmFsb2dpeF9kcCBicmNt
Zm1hYyBudm1lIGR3X21pcGlfZHNpIG52bWVfY29yZSBkd19oZG1pCj4+Pj4gcGFuZnJvc3QgY2Vj
IGJyY211dGlsIGRybV9rbXNfaGVscGVyIGdwdV9zY2hlZCBjZmc4MDIxMSBoY2lfdWFydCBkcm0K
Pj4+PiBidGJjbSBjcmN0MTBkaWZfY2Ugc25kX3NvY19zaW1wbGVfY2FyZCBibHVldG9vdGggc25k
X3NvY19yb2NrY2hpcF9pMnMKPj4+PiBzbmRfc29jX3NpbXBsZV9jYXJkX3V0aWxzIHNuZF9zb2Nf
cm9ja2NoaXBfcGNtIHBoeV9yb2NrY2hpcF9wY2llCj4+Pj4gZWNkaF9nZW5lcmljIHJ0Y19yazgw
OCBlY2MgcGNpZV9yb2NrY2hpcF9ob3N0IHJma2lsbCByb2NrY2hpcF90aGVybWFsCj4+Pj4gaXBf
dGFibGVzIHhfdGFibGVzIGlwdjYgbmZfZGVmcmFnX2lwdjYKPj4+PiBbICAgNTguMzEyMTUwXSBD
UFU6IDAgUElEOiAxIENvbW06IHNodXRkb3duIE5vdCB0YWludGVkCj4+Pj4gNS41LjAtcmMxLWRp
cnR5ICMxCj4+Pj4gWyAgIDU4LjMxMjcyNV0gSGFyZHdhcmUgbmFtZTogOTZib2FyZHMgUm9jazk2
MCAoRFQpCj4+Pj4gWyAgIDU4LjMxMzEzMV0gcHN0YXRlOiA2MDAwMDA4NSAoblpDdiBkYUlmIC1Q
QU4gLVVBTykKPj4+PiBbICAgNTguMzEzNTUxXSBwYyA6IGkyY190cmFuc2ZlcisweGU0LzB4ZjgK
Pj4+PiBbICAgNTguMzEzODg5XSBsciA6IGkyY190cmFuc2ZlcisweGU0LzB4ZjgKPj4+PiBbICAg
NTguMzE0MjI1XSBzcCA6IGZmZmY4MDAwMTAwNGJiMDAKPj4+PiBbICAgNTguMzE0NTE2XSB4Mjk6
IGZmZmY4MDAwMTAwNGJiMDAgeDI4OiBmZmZmMDAwMDdkMjA4MDAwCj4+Pj4gWyAgIDU4LjMxNDk4
MV0geDI3OiAwMDAwMDAwMDAwMDAwMDAwIHgyNjogMDAwMDAwMDAwMDAwMDAwMAo+Pj4+IFsgICA1
OC4zMTU0NDZdIHgyNTogMDAwMDAwMDAwMDAwMDAwMCB4MjQ6IDAwMDAwMDAwMDAwMDAwMDgKPj4+
PiBbICAgNTguMzE1OTEwXSB4MjM6IDAwMDAwMDAwMDAwMDAwMDAgeDIyOiBmZmZmODAwMDEwMDRi
Yzc0Cj4+Pj4gWyAgIDU4LjMxNjM3NV0geDIxOiAwMDAwMDAwMDAwMDAwMDAyIHgyMDogZmZmZjgw
MDAxMDA0YmI1OAo+Pj4+IFsgICA1OC4zMTY4NDFdIHgxOTogZmZmZjAwMDA3ODRmMDg4MCB4MTg6
IDAwMDAwMDAwMDAwMDAwMTAKPj4+PiBbICAgNTguMzE3MzA1XSB4MTc6IDAwMDAwMDAwMDAwMDAw
MDEgeDE2OiAwMDAwMDAwMDAwMDAwMDE5Cj4+Pj4gWyAgIDU4LjMxNzc3MF0geDE1OiBmZmZmZmZm
ZmZmZmZmZmZmIHgxNDogZmZmZjgwMDAxMTgzOThjOAo+Pj4+IFsgICA1OC4zMTgyMzZdIHgxMzog
ZmZmZjgwMDA5MDA0Yjg2NyB4MTI6IGZmZmY4MDAwMTAwNGI4NmYKPj4+PiBbICAgNTguMzE4NzAx
XSB4MTE6IGZmZmY4MDAwMTE4NTEwMDAgeDEwOiBmZmZmODAwMDEwMDRiN2YwCj4+Pj4gWyAgIDU4
LjMxOTE2Nl0geDkgOiAwMDAwMDAwMGZmZmZmZmQwIHg4IDogZmZmZjgwMDAxMDY5OWFkOAo+Pj4+
IFsgICA1OC4zMTk2MzFdIHg3IDogMDAwMDAwMDAwMDAwMDI2NSB4NiA6IGZmZmY4MDAwMTFhMjBi
ZTkKPj4+PiBbICAgNTguMzIwMDk2XSB4NSA6IDAwMDAwMDAwMDAwMDAwMDAgeDQgOiAwMDAwMDAw
MDAwMDAwMDAwCj4+Pj4gWyAgIDU4LjMyMDU2MV0geDMgOiAwMDAwMDAwMGZmZmZmZmZmIHgyIDog
ZmZmZjgwMDAxMTg1MWFiOAo+Pj4+IFsgICA1OC4zMjEwMjZdIHgxIDogZDM3NWMwZDRmNDc1MWYw
MCB4MCA6IDAwMDAwMDAwMDAwMDAwMDAKPj4+PiBbICAgNTguMzIxNDkxXSBDYWxsIHRyYWNlOgo+
Pj4+IFsgICA1OC4zMjE3MTBdICBpMmNfdHJhbnNmZXIrMHhlNC8weGY4Cj4+Pj4gWyAgIDU4LjMy
MjAyMF0gIHJlZ21hcF9pMmNfcmVhZCsweDVjLzB4OTgKPj4+PiBbICAgNTguMzIyMzUwXSAgX3Jl
Z21hcF9yYXdfcmVhZCsweGNjLzB4MTM4Cj4+Pj4gWyAgIDU4LjMyMjY5NF0gIF9yZWdtYXBfYnVz
X3JlYWQrMHgzYy8weDcwCj4+Pj4gWyAgIDU4LjMyMzAzNF0gIF9yZWdtYXBfcmVhZCsweDYwLzB4
ZTAKPj4+PiBbICAgNTguMzIzMzQxXSAgX3JlZ21hcF91cGRhdGVfYml0cysweGM4LzB4MTA4Cj4+
Pj4gWyAgIDU4LjMyMzcwN10gIHJlZ21hcF91cGRhdGVfYml0c19iYXNlKzB4NjAvMHg5MAo+Pj4+
IFsgICA1OC4zMjQwOTldICByazgwOF9kZXZpY2Vfc2h1dGRvd24rMHgzOC8weDUwCj4+Pj4gWyAg
IDU4LjMyNDQ3Nl0gIG1hY2hpbmVfcG93ZXJfb2ZmKzB4MjQvMHgzMAo+Pj4+IFsgICA1OC4zMjQ4
MjNdICBrZXJuZWxfcG93ZXJfb2ZmKzB4NjQvMHg3MAo+Pj4+IFsgICA1OC4zMjUxNTldICBfX2Rv
X3N5c19yZWJvb3QrMHgxNWMvMHgyNDAKPj4+PiBbICAgNTguMzI1NTA0XSAgX19hcm02NF9zeXNf
cmVib290KzB4MjAvMHgyOAo+Pj4+IFsgICA1OC4zMjU4NThdICBlbDBfc3ZjX2NvbW1vbi5jb25z
dHByb3AuMisweDg4LzB4MTUwCj4+Pj4gWyAgIDU4LjMyNjI3OV0gIGVsMF9zdmNfaGFuZGxlcisw
eDIwLzB4ODAKPj4+PiBbICAgNTguMzI2NjA3XSAgZWwwX3N5bmNfaGFuZGxlcisweDExOC8weDE4
OAo+Pj4+IFsgICA1OC4zMjY5NjBdICBlbDBfc3luYysweDE0MC8weDE4MAo+Pj4+IFsgICA1OC4z
MjcyNTFdIC0tLVsgZW5kIHRyYWNlIGIxZGUzOWQwM2Q3MjRkMDEgXS0tLQo+Pj4+Cj4+Pj4gLUFu
YW5kCj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+Pj4+IExpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4+Pj4KPj4+IEdydcOfLAo+IC1BbmFuZAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
