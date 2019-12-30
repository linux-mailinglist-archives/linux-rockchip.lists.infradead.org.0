Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6AA12CDEC
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 10:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38byAgMHftJXER06fOzdiq7t/2DqLJHCl9/HFMBg8zU=; b=U/nqJkUhwtJB3G
	/lmlbeHU4k7D7libtxSVjSskHrPRc/dEK4w3dvsttVGjUEhJEbNhDeNAyjLgQEBovxjlYH6m4cfuY
	JeTlzRg82FR+pLQ0i2g1f2z97WgP3C+h0HW9iSYcW1Iqq4tWfvnmXQ3wi6YeC73TT+38Cjz2grCQq
	cRkpQwz7ULhirHeAXh5KSaUIeLCubFdZxYvMYCpolzTLLFhHIDqqZ5IEfjJT42xM5NwuAq3i228wb
	3YTrxV9PrETkoX/7vcQ85QTH0Iz4+hBP5SbE5uyXCE1RhE+rqrdqUf0/TUp6hNiM1IcR5UUSpMsLP
	PtGFLPUd3ZR+Pg3oJ/WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqzf-0003Zi-TJ; Mon, 30 Dec 2019 09:05:43 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqz3-0001sQ-MF
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 09:05:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1577696664;
 bh=9F1MzVQFEcfScG++3BWBkxbtZqQvSHE63NGNC6Q7M1g=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=MD+pTRoAc+/hqHXu0pQ6UVw9fYe7Li/6B821wEpUpvGvJdKaPTcGGPpat7ASLSaEh
 t8SXIfzWllxtEIQJo23E3ctXxP4L3aqPR+nx/4ryWZK30WdS5n6zy0KQ8MXwTRdfad
 VWCJlFL2EzaTE9VMJSKM1tV+fV0uQrDdisE/9mnk=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([77.191.84.162]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MS1xS-1jAd862jmc-00TG0Y; Mon, 30
 Dec 2019 10:04:24 +0100
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Jagan Teki <jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
 <ee58a8ea-89b1-4b9c-53e3-74c112e66fb4@web.de>
 <CAMty3ZC-jKKfnpnb4p6CmPBGLoDTac=NwGqtAvdtcM-B2N466w@mail.gmail.com>
 <30fdf54b-0f71-ffbf-ac57-51050a29b56d@web.de>
 <CAMty3ZB0B+6ou9=DB-LP0q3R-6Gt_rRrx6b5KLjYNUKeOV_BNQ@mail.gmail.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <d754e22f-0cb0-31b9-6862-1982dd1df193@web.de>
Date: Mon, 30 Dec 2019 10:04:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMty3ZB0B+6ou9=DB-LP0q3R-6Gt_rRrx6b5KLjYNUKeOV_BNQ@mail.gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:3/Rgf4IAqirSpI7pvHIUm6d/Y3YPoHr9Q56HP0CahtQh2nCNx/8
 fMudxYjGlNRvEw0JqbCLVHr8kCWstzxIbCDICx/WKxGcMHXKkUGt6ZLsia7cgl2NLXlQkQc
 LrOYL9vnZodW+ZDH7kIo+OhJBXoTRW2fPO3n85c5bWAAW17mIXzSq8tGTtH60pKmn442U2b
 JYsKDlxWNobvaaIrg6y4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gDovATIaRAQ=:S4qlJhHa/dSq6qJqL8b0iY
 fvBewCVtZWFVpoO8WDA3ukm13tREmCrf/LfyBK1Vp/EYGeshQHYFpqyi08V03m5glla6gVOeh
 Q5zMGzSZGJ5IyuzR5T/g2PGjiw24FktVpuq0q3daBW2hAekXIgaHruNd0Bihop/ektKjVZwn6
 nfwOy2EBq9ItmWQ5fphJ2pRDDa4EgXZ9NsSgtUG09s4Pnv11iJEnpZ/Oa7cg7ejBu4Uqr41Sh
 evV0PK9mubzBNTyKvkw03geKqrRal3aHyay90ZSGr2VSIKlMA+r19aRcAlk73cEkT2VvJwt/l
 v3A4bTV4L+PpxeJoOsxJTfzZ6VzOQ6pwPuUMowCkUrFWmHDPncr4hfmj6GN7/wR5CovMcoCJi
 KrgG+ory//OgofTtZcd2hmOqC8rDRMyvJnUOYaZbr0tVaJ3zyCTWDW2YesXScQhXKNedag1gS
 9SycRWdksFrM26ycvKYE8FO8qFyYPM6wciNJ0MxhzQSjlVtz//lO+PiGP0B9ixvyJpHWnWzFa
 qzXxFBTVCs6iUeykWsytHQZZfUfTxb5V7mRanWCFyg34TH6e2zvnnt+89xIe5ulsDQd7n4lKb
 8w/n4LOb8/uBS7aOCOA20dONFFJ10lzGBCfSuXFZlJwLrfGkTBX8OYUvj6KSzsWLEwC5ERzW3
 IgJ/q299794mNXjG7gd3vy4A1dLsPMbXDWPLajKdRbiR/7vPiz7TPslL08gLrjnJctTBXUPhj
 IHAga8g6OlZbMLg9UCnAw9F3+PsyIaXUXinLzLbdAQLzu0XJvz+dvVUKIXsfPngHm2ogBiWJW
 H85JNPG/itKZxW8KkvH8ym860SodSlPV5PUkhMK8yMEvL+s6shW51elbd4PfZR0AYd07SRnAp
 7CzbFZLxG4gP3ITSv/AA9hE7gzRvPa/bFcrr9Eiz/ghHyoqMnH/R4Pqgcoh65uSlgPTLsnEfc
 jXzzi+5ZTEosAEmknZylcyGTd5FcS/nM7Equi7+wDciGZQLvMsv+qzyxXtYbFh5yT2nDYzkml
 HL8EnQdngw45Kc2FsPjXRgRCsWU8tBjGHD02MCmKMZ+viHMY5/uSG7uagUpmlTqT6JFrI7hoU
 p61p01il35I+qTG96UbXnZOHvaGbDtST39Oy2obZnbiDdkLl8ejtroMOq5hkMJ8hobB6vBp13
 MsKIk3MR0gggM9lY/ABg3Rf7IEcm/iLu9GBrBqsitOKMvf0miCV+KS44fW79MW4ortI9joJO3
 tcKpLoWnoyVs6CnBmTiG/NidRDz/o9D8+XsrbDw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_010506_284755_4B84F3C5 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.3 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.3 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjguMTIuMTkgMTM6MDgsIEphZ2FuIFRla2kgd3JvdGU6Cj4gT24gRnJpLCBEZWMgMjcsIDIw
MTkgYXQgNjo0OSBQTSBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRlPiB3cm90ZToKPj4gT24gMjcu
MTIuMTkgMTM6MDQsIEphZ2FuIFRla2kgd3JvdGU6Cj4+PiBPbiBGcmksIERlYyAyNywgMjAxOSBh
dCA0OjAwIFBNIFNvZXJlbiBNb2NoIDxzbW9jaEB3ZWIuZGU+IHdyb3RlOgo+Pj4+IEhpIQo+Pj4+
Cj4+Pj4gT24gMjcuMTIuMTkgMDc6NTAsIEphZ2FuIFRla2kgd3JvdGU6Cj4+Pj4+IEhpIEtldmVy
LAo+Pj4+Pgo+Pj4+PiBPbiBNb24sIERlYyAyMywgMjAxOSBhdCA4OjA0IEFNIEtldmVyIFlhbmcg
PGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Pj4+Pj4gSmFnYW4sCj4+Pj4+Pgo+
Pj4+Pj4KPj4+Pj4+IE9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToK
Pj4+Pj4+PiBNb3N0IG9mIHRoZSBTUEkgZmxhc2ggZGV2aWNlcyBpbiByb2NrY2hpcCBhcmUgMTZN
aUIgc2l6ZS4KPj4+Pj4+Pgo+Pj4+Pj4+IFNvLCBrZWVwaW5nIFUtQm9vdCBwcm9wZXIgb2Zmc2V0
IHN0YXJ0IGZyb20gMTI4TWlCIHdpdGggMU1pQgo+Pj4+Pj4+IHNpemUgYW5kIHRoZW4gc3RhcnQg
ZW52IG9mIDhLaUIgd291bGQgYmUgYSBjb21wYXRpYmxlIGxvY2F0aW9uCj4+Pj4+Pj4gYmV0d2Vl
biBhbGwgdmFyaWFudHMgb2YgZmxhc2ggc2l6ZXMuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGlzIHBhdGNo
IGFkZCBlbnYgc3RhcnQgZnJvbSAweDE0MDAwIHdpdGggYSBzaXplIG9mIDhLaUIuCj4+Pj4+PiBX
aGF0J3MgdGhlIHNwYWNlIG1hcCBpbiBTUEkgZmxhc2ggc3VwcG9zZSB0byBiZT8gSW5jbHVkaW5n
Cj4+Pj4+PiB0cGwvc3BsL3UtYm9vdC5pdGIKPj4+Pj4+Cj4+Pj4+PiBJIHdvdWxkIHByZWZlciB0
byB1c2UgMTI4S2lCLThLaUIgYXMgdGhlIGVudiBzdGFydCBhZGRyZXNzLCB3ZSdkIGJldHRlcgo+
Pj4+Pj4gdG8gYXZvaWQgdGhlCj4+Pj4+Pgo+Pj4+Pj4gcmlzayBvZiBvdmVybGFwIGJldHdlZW4g
dGhlIGVudiBzcGFjZSBhbmQgdGhlIGZpcm13YXJlIHNwYWNlLgo+Pj4+PiBIZXJlIGlzIHRoZSAx
Nk1pQiBmbGFzaCBsYXlvdXQsIEkgaGF2ZSB1c2VkLiBJIGNhbiBzZWUgdGhlIGxvYWRlcjEKPj4+
Pj4gKHRwbC9zcGwpIGNhbiBiZSBwb3NzaWJsZSB0byBsb2FkIGF0IDB4MCBvciAweDMySyBzbyBJ
IGhhdmUgZ2l2ZW4gdGhlCj4+Pj4+IHNwYWNlIGZvciBpdC4gYW5kIDhLIGVudiBhZnRlciBsb2Fk
ZXIyKHUtYm9vdCkuIGxldCBtZSBrbm93IHlvdXIKPj4+Pj4gdGhvdWdodHM/Cj4+Pj4gV2h5IHdl
IGNhbm5vdCB1c2UgdGhlIHNhbWUgbGF5b3V0IGFzIHdoYXQgaXMgZGVmaW5lZCBmb3IgU0QvZU1N
QzoKPj4+PiBodHRwOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS93aWtpX1BhcnRpdGlvbnMK
Pj4+Pgo+Pj4+Cj4+Pj4KPj4+Pj4gICAgICAgICAgIDB4MCAtIDB4ODAwMCwgICAgICAgMzJLICA9
PiAgcmVzZXJ2ZWQvbG9hZGVyMQo+Pj4+PiAgICAgMHg4MDAwIC0gMHg0MDAwMCwgICAgMjI0SyA9
PiAgbG9hZGVyMQo+Pj4+PiAgIDB4NDAwMDAgLSAweDE0MDAwMCwgICAgMU0gID0+ICBsb2FkZXIy
Cj4+Pj4+IDB4MTQwMDAwIC0gMHgxNDIwMDAsICAgIDhLICA9PiAgIGVudgo+Pj4+PiAweDE0MjAw
MCAtIDB4ODQyMDAwLCAgICA3TSAgPT4gIGtlcm5lbAo+Pj4+PiAweDg0MjAwMCAtIDB4ODUzODAw
LCAgMTAwSyA9PiAgZHRiCj4+Pj4+IDB4ODUzODAwIC0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgID0+ICByb290Cj4+Pj4gVGhlc2Ugc21hbGwgbG9hZGVyMS9sb2FkZXIyIHBhcnRpdGlvbnMg
bWF5IGJ5dGUgdXMgbGF0ZXIgd2hlbiBuZXdlcgo+Pj4+IHUtYm9vdCB2ZXJzaW9ucyBvbmx5IHdp
bGwgZml0IGZvciBTRCBhbmQgbm90IGZvciBTUEkgYW55bW9yZS4KPj4+IFllcywgdGhlIGluaXRp
YWwgaWRlYSBpcyB0byByZXVzZSB0aGUgZXhpc3RpbmcgU0QgbGF5b3V0IGJ1dCB0aGUgU1BJCj4+
PiBmbGFzaCBpcyBsaW1pdGVkIGluIHNpemUsIGFuZCBpdCBpcyBmdXJ0aGVyIGxpbWl0ZWQgaW4g
cmszMzk5IGJvYXJkcwo+Pj4gKHJvY2twcm82NCwgcm9jLXJrMzM5OS1wYy4uKS4gd2hpY2ggaXMg
MTZNaUIuIFNvIHJldXNpbmcgaGFsZiBvZiB0aGUKPj4+IGZsYXNoIHNpemUgd2lsbCBvY2N1cHkg
Zm9yIHRpbGwgbG9hZGVyMiBpbiBTRCBzY2hlbWUuCj4+IEV4YWN0bHkuIE9uIG15IFJvY2tQcm82
NCBTUEkgZmxhc2ggc2l6ZSBpcyAxNk1pQi4gVGhpcyBjb3ZlcnMgZXZlcnl0aGluZwo+PiB1cCB0
byAiYm9vdCIsIGVzcGVjaWFsbHkgbG9hZGVyMSwgbG9hZGVyMiwgYW5kIFUtQm9vdCBFTlYuIFBy
b2JhYmx5IHRoZQo+PiBTUEkgb24gdGhlc2UgYm9hcmRzIGlzIHNpemVkIHRoaXMgd2F5IHRvIGV4
YWN0bHkgbWF0Y2ggdGhpcyB1c2UgY2FzZS4KPj4gV2hhdCBzaG91bGQgYmUgdGhlIGFkdmFudGFn
ZSBvZiBvbmx5IHVzaW5nIGhhbGYgb2YgdGhlIGF2YWlsYWJsZSBtZW1vcnk/CkkgZm91bmQgYW5v
dGhlciBSb2NrY2hpcCBkb2N1bWVudGF0aW9uIGFib3V0IFNQSSB1c2FnZToKaHR0cDovL29wZW5z
b3VyY2Uucm9jay1jaGlwcy5jb20vd2lraV9Cb290X29wdGlvbgoKVGhpcyBjbGVhcmx5IGNvbmZp
cm1zIG15IGFzc3VtcHRpb246IFdoZW4gYm9vdGluZyBmcm9tIFNQSSBldmVyeXRoaW5nIHVwCnRv
IHUtYm9vdCBzaG91bGQgcmVzaWRlIGluIFNQSSwgbGF0ZXIgc3RhZ2VzIChrZXJuZWwsLi4uKSBp
biAib3RoZXIgcGxhY2UiLgo+IFRvIG1ha2Ugc21hbGwgc3lzdGVtcyB0byBmdWxsIHVzZSBvZiBG
bGFzaC4gdW5saWtlIGRpc3Ryb3MsIHRoZQo+IGVtYmVkZGVkIHN5c3RlbXMgdGhhdCBydW4ganVz
dCB3aXRoIGluaXRyYW1mcy4gT3IgYW55IHVwZGF0ZSBtZWNoYW5pc20KPiBpbiBzeXN0ZW1zIHRv
IG1ha2UgZmxhc2ggYm9vdCBhcyBhbiB1cGRhdGUgYWdlbnQgYW5kIFNEIG9yIG90aGVyCj4gbWVk
aXVtcyBhcyBtYWluIHN5c3RlbXMuCllvdSB0YWxrIGFib3V0IHJvY2twcm82NCBhbmQgcm9jLXJr
MzM5OS1wYyBoZXJlLiBUaGVzZSBhcmUgY29uc3VtZXIKYm9hcmRzLCBpbnRlbmRlZCBmb3IgZW5k
IHVzZXJzLiBUaGVzZSBhcmUgbm90ICJzbWFsbCBzeXN0ZW1zIiwgdGhleQpuZXZlciB3aWxsIGJl
IHVzZWQgd2l0aG91dCBvdGhlciBzdG9yYWdlIHRoYW4gU1BJLiBBbmQgYXMgYWxyZWFkeQptZW50
aW9uZWQsIGV2ZW4gYSBoZWF2aWx5IHN0cmlwcGVkIGRvd24ga2VybmVsIHdpbGwgbm90IGZpciBp
biByZW1haW5pbmcKU1BJIHNwYWNlLiBTbyB0aGVyZSBpcyBubyBzdWNoIHVzZSBjYXNlIG9uIHRo
ZXNlIGJvYXJkcy4KPj4+PiBUaGUgcmVzZXJ2ZWQgc3BhY2UgZm9yIGtlcm5lbCBpcyBhbHJlYWR5
IHRvbyBzbWFsbCBmb3Igbm9ybWFsIGtlcm5lbAo+Pj4+IGJ1aWxkcyB0b2RheSwgbm90IHRvIG1l
bnRpb24gYSByb290IGZpbGVzeXN0ZW0uCj4+Pj4KPj4+PiBBcmUgdGhlcmUgYW55IHVzZSBjYXNl
cyB3aGVyZSBzb21lYm9keSBuZWVkcyB0byBwbGFjZSBib290IGFuZCByb290Cj4+Pj4gcGFydGl0
aW9ucyBvbiBTUEkgZmxhc2g/Cj4+PiBTbywgZXhwbGFpbmVkIGFib3ZlIGR1ZSB0byBzaXplIGxp
bWl0YXRpb24gdGhlIHJlc3BlY3RpdmUgYmxvY2tzIGxpa2UKPj4+IGtlcm5lbCwgcm9vdCAod2Ug
Y2FuIHNheSBpbml0cmQpIGFyZSBpbmRlZWQgbGVzcy1zaXplZCBwYXJ0aXRpb25zLgo+Pj4gTW9y
ZW92ZXIgU1BJIGZsYXNoIGlzIG5vdCBhIHN1aXRhYmxlIHN0b3JhZ2UgZm9yIHJvb3RmcyBpbiBy
b2NrY2hpcCwKPj4+IHNpbmNlIHRoZSBib290IG9yZGVyIHN0YXJ0IGZyb20gU1BJIGZsYXNoIHVz
dWFsbHkgYm9hcmQgd291bGQgYm9vdAo+Pj4gZnJvbSBmbGFzaCBhbmQgdGhlbiBsb29rIGZvciBT
RCwgZU1NQywgUENJZSBOVk0gZm9yIGxvYWRpbmcgYmlnIGNodW5rCj4+PiByb290ZnMuCj4+Pgo+
Pj4gTW9yZSBvciBsZXNzIHRoZSBpZGVhIG9mIGFib3ZlIGZsYXNoIGxheW91dCBpcyB0byBmaXQg
cHJvcGVybHkKPj4+IHdpdGgtaW4tdGhlIHNpemUgYm91bmRhcmllcyBhbmQgaW5kZWVkIGZvciBz
bWFsbCBpbml0cmFtZnMgc3lzdGVtcy4KPj4gV2UgdXNlIGRpc3Ryb2Jvb3QgaW4gdGhlIGRlZmNv
bmZpZ3Mgb2YgdGhlc2UgYm9hcmRzLCBzbyBubyBzZXBhcmF0ZQo+PiBzcGFjZSBmb3Iga2VybmVs
IG9yIGluaXRyZCBpcyByZXF1aXJlZCBpbiAocmF3KSBmbGFzaCwgdGhlc2UgYmxvYnMgYXJlCj4+
IGFsd2F5cyBsb2FkZWQgZnJvbSB0aGUgYm9vdCBwYXJ0aXRpb24gaW5zdGVhZC4KPj4gQmVzaWRl
cyB0aGF0LCBrZXJuZWxzIGZvciBteSBSb2NrUHJvNjQgYXJlIGJpZ2dlciAoMTJNaUIgLSAyME1p
QikgdGhhbgo+PiB0aGUgYXZhaWxiYWxlIHNwYWNlIGluIFNQSSBhbnl3YXksIHdpdGggYWRkaXRp
b25hbCB+NU1pQiBmb3IgaW5pdHJkLgo+IEFzIEkgZXhwbGFpbmVkIGFib3ZlLiBTbywgd2UgY2Fu
IHNraXAgTGludXgsIHJvb3RmcyBmcm9tIGZsYXNoIGFuZAo+IG1ha2UgdXNlIG9mIGZsYXNoIGxh
eW91dCB0aGF0IGNvbXBhdGlibGUgYmV0d2VlbiBhbGwgc3lzdGVtcy4gd2hhdCBpcwo+IHRoZSBp
c3N1ZSB3aXRoIHRoYXQgb3RoZXIgdGhhbiBmdXR1cmUgcHJvb2Ygd2l0aCBTRCBsYXlvdXQuCkkn
bSBub3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGhlcmUuIGRlZmNvbmZpZyBvbiB0aGVzZSBjb25zdW1l
ciBib2FyZHMKc2hvdWxkIGJlIGFzIHNpbXBsZSBhbmQgZWFzeSB0byB1bmRlcnN0YW5kIGFzIHBv
c3NpYmxlLiBBbmQgZm9yIHN1cmUgaXQKc2hvdWxkIGJlIGFzIGRvY3VtZW50ZWQgYnkgcm9ja2No
aXAuIEJvb3QgcHJvY2VkdXJlIGFscmVhZHkgaXMKY29tcGxpY2F0ZWQgZW5vdWdoLCB3ZSBzaG91
bGQgbm90IGNvbmZ1c2UgdXNlcnMgZXZlbiBtb3JlLgo+Cj4gSSB1bmRlcnN0YW5kIHlvdXIgcG9p
bnQsIGJ1dCBlYWNoIGFuZCBldmVyeSBzdG9yYWdlIG1lZGl1bSBjYW4gaGF2ZQo+IGl0J3Mgb3du
IHVzYWdlIHRvIG1ha2UgdXNlIG9mIGZ1bGwgc3lzdGVtIHJ1bm5pbmcuIFNvIHRoZSBwYXJ0aXRp
b24KPiBsYXlvdXQgd291bGQgZGVwZW5kIG9uIHRoZSBzaXplIGFuZCBmaWxlIHN5c3RlbXMgYnV0
IGl0IHNob3VsZG4ndAo+IGRlcGVuZCBvbiBwYXJ0aWN1bGFyIHNvZnR3YXJlIHVzYWdlLCBJTUhP
LgpUaGUgZGlzdHJvYm9vdCBmZWF0dXJlIG9mIHUtYm9vdCBpcyB0b3RhbGx5IGluZGVwZW5kZW50
IG9mIHRoZSBhY3R1YWwKb3BlcmF0aW5nIHN5c3RlbSBydW5uaW5nIGxhdGVyLiBBbmQgZGlzdHJv
Ym9vdCBpcyB1c2VkIG5vdyBpbiBkZWZjb25maWcsCnNvIHdoYXQgaXMgeW91ciBwcm9ibGVtIGhl
cmU/Cj4+IE15IHVzZSBjYXNlIGZvciBTUEkgd291bGQgYmUgdG8gc3RvcmUgdS1ib290K1NQTCtU
UEwrQVRGK2Vudmlyb25tZW50Cj4+IHRoZXJlLCBzbyB0aGF0IEkgY2FuIHVzZSBhIHNpbmdsZSBj
b21iaW5lZCByb290K2Jvb3QgcGFydGl0aW9uIG9uIGEgU0QKPj4gY2FyZCAvIFVTQiBkaXNrLgo+
PiBTbyBJIHRoaW5rIHRoZSBlYXNpZXN0LCBsZWFzdCBjb25mdXNpbmcsIGFuZCBmdXR1cmUtcHJv
b2YgIFNQSSBwYXJ0aXRpb24KPj4gc2NoZW1lIHdvdWxkIGJlIHRvIHVzZSBleGFjdGx5IHdoYXQg
aXMgZGVmaW5lZCBhbHJlYWR5IGZvciBTRC9lTU1DLgo+IExlc3MgY29uZnVzZWQgaW4gdGVybXMg
b2YgbWFpbnRlbmFuY2UgYW5kIGVhc3kgdG8gdW5kZXJzdGFuZCBidXQgaXQKPiBtYXkgbm90IGJl
IHVzZWQgZm9yIHNvbWUgY29ybmVyIGNhc2VzIGxpa2Ugc21hbGxlciBzeXN0ZW1zLgpJZiB5b3Ug
d2FudCB0byBzdXBwb3J0IGNvcm5lciBjYXNlcywgeW91IGNhbiBmb3Igc3VyZSBkbyBzbyB3aXRo
IGFkYXB0ZWQKdS1ib290IGNvbmZpZ3MuIGRlZmNvbmZpZyBmb3IgY29uc3VtZXIgYm9hcmRzIHNo
b3VsZCBiZSBhcyBlYXN5IHRvCnVuZGVyc3RhbmQgYW5kIG1haW50YWluIGFzIHBvc3NpYmxlLiBB
bmQgdGhhdCBhbHNvIG1lYW5zIGl0IHNob3VsZCBiZSBhcwpkb2N1bWVudGVkIGFuZCBub3QgY29u
ZnVzaW5nbHkgZGlmZmVyZW50LgoKSSBtYWludGFpbiBhIGRpZmZlcmVudCBib2FyZCBbMV0gZm9y
IHllYXJzIG5vdywgYW5kIHRoaXMgbm93YWRheXMKcmVwZWF0ZWRseSBjYXVzZXMgcHJvYmxlbXMg
Zm9yIG1hbnkgZGV2ZWxvcGVycyBkdWUgdG8gc2l6ZSBjb25zdHJhaW50cy4KQWxsIHRoaXMgYmVj
YXVzZSB0aGUgb3JpZ2luYWwgYm9hcmQgdmVuZG9yIGRlY2lkZWQgdG8gdXNlIHRvbyBzbWFsbAp1
LWJvb3QgcGFydGl0aW9ucy4gUGxlYXNlIGRvIG5vdCByZXBlYXQgdGhpcyBtaXN0YWtlIGhlcmUu
CgpTb2VyZW4KClsxXQpodHRwczovL2dpdGh1Yi5jb20vdS1ib290L3UtYm9vdC9ibG9iL21hc3Rl
ci9ib2FyZC90YnMvdGJzMjkxMC9NQUlOVEFJTkVSUwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
