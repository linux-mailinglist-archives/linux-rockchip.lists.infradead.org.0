Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E95EF6977
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 15:30:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q7PelUrukSr4VoyaMqZMXOv0NGzLXWjaHH/wbWhjeXE=; b=AumvRci7onMlVgNaF2mFgPaMN
	o+kfaBKgxW1hlwp/39cr+BY1HNRF+fHfzB3GmX7qX6NzHBSSa1p/7tbOfaop6S3KHoT1ekdGFVZw5
	tbfijpIYau1Z3utZ1c+06dOQ+6BvHDrkLrbKEo/FmgZxPJCHZlHPTJCxemU9jbQNgX0Zri9Rv/wam
	32fdGb6b3mxwwdycVVA6pxXOrvQZ4cGcPpgAHyCWqh3Xty+JSic6Yr9Y1iGyFclqkSNmjIkgU34MU
	ELpk3yIj8UVIb/KdCfRJQfw9I0I81DyBTtR7A94ZsxdTJOz+nlFeWsnCL8+8ol8GYF5+UJWgrC1YT
	yP+iACXGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iToEi-00024k-JJ; Sun, 10 Nov 2019 14:30:40 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iToEe-00024I-Jo
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 14:30:38 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 537953A6;
 Sun, 10 Nov 2019 22:30:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.43])
 by smtp.263.net (postfix) whith ESMTP id
 P15627T140111387801344S1573396232042313_; 
 Sun, 10 Nov 2019 22:30:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6389f12b4ed6227c5e250c4e270cbd2d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: matwey.kornilov@gmail.com
X-SENDER-IP: 112.49.232.43
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 7/7] doc: boards: Add rockchip documentation
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
 <20191023195652.7158-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6492a339-7d0b-607f-498a-36c1652180d9@rock-chips.com>
Date: Sun, 10 Nov 2019 22:30:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023195652.7158-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_063037_124640_C3775BF0 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.199 listed in wl.mailspike.net]
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SmFnYW4sCgpPbiAyMDE5LzEwLzI0IOS4iuWNiDM6NTYsIEphZ2FuIFRla2kgd3JvdGU6Cj4gUm9j
a2NoaXAgaGFzIGRvY3VtZW50YXRpb24gZmlsZSwgZG9jL1JFQURNRS5yb2NrY2hpcCBidXQKPiB3
aGljaCBpcyBub3Qgc28gcmVhZGFibGUgdG8gYWRkIG9yIHVuZGVyc3RhbmQgdGhlIGV4aXN0aW5n
Cj4gY29udGVudHMuIEV2ZW4gdGhlIGZvcm1hdCB0aGF0IHN1cHBvcnQgaXMgbGVnYWN5IHJlYWRt
ZQo+IGluIFUtQm9vdC4KPgo+IEFkZCByb2NrY2hpcCBzcGVjaWZpYyBkb2N1bWVudGF0aW9uIGZp
bGUgdXNpbmcgbmV3IHJzdAo+IGZvcm1hdCwgd2hpY2ggZGVzY3JpYmVzIHRoZSBpbmZvcm1hdGlv
biBhYm91dCBSb2NrY2hpcAo+IHN1cHBvcnRlZCBib2FyZHMgYW5kIGl0J3MgdXNhZ2Ugc3RlcHMu
Cj4KPiBBZGRlZCBtaW5pbWFsIGluZm9ybWF0aW9uIGFib3V0IHJrMzI4OCwgcmszMzI4LCByazMz
NjgKPiBhbmQgcmszMzk5IGJvYXJkcyBhbmQgdXNhZ2UuIFRoaXMgd291bGQgaW5kZWVkIHVwZGF0
ZWQKPiBmdXJ0aGVyIGJhc2VkIG9uIHRoZSByZXF1aXJlbWVudHMgYW5kIHVwZGF0ZXMuCgoKVGhp
cyBwYXRjaCBtb3ZlIHNtYWxsIHBhcnQgb2YgY29udGVudCBmcm9tIGRvYy9SRUFETUUucm9ja2No
aXAsIEkgd291bGQgCnByZWZlcgoKdG8gaGF2ZSBhIG1vcmUgY29tcGxldGUgdmVyc2lvbiBiZWZv
cmUgaXQgbW92ZSB0byBuZXcgZG9jdW1lbnQuCgoKVGhhbmtzLAoKLSBLZXZlcgoKPiBDYzogS2V2
ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogTWF0d2V5IFYuIEtvcm5p
bG92IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IC0tLQo+ICAgZG9jL2JvYXJkL3JvY2tj
aGlwL2luZGV4LnJzdCAgICB8ICAxMCArKysKPiAgIGRvYy9ib2FyZC9yb2NrY2hpcC9yb2NrY2hp
cC5yc3QgfCAxMjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDIgZmlsZXMg
Y2hhbmdlZCwgMTM4IGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkb2MvYm9h
cmQvcm9ja2NoaXAvaW5kZXgucnN0Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZG9jL2JvYXJkL3Jv
Y2tjaGlwL3JvY2tjaGlwLnJzdAo+Cj4gZGlmZiAtLWdpdCBhL2RvYy9ib2FyZC9yb2NrY2hpcC9p
bmRleC5yc3QgYi9kb2MvYm9hcmQvcm9ja2NoaXAvaW5kZXgucnN0Cj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi4wYzM3N2U5YmJiCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2RvYy9ib2FyZC9yb2NrY2hpcC9pbmRleC5yc3QKPiBAQCAtMCwwICsxLDEwIEBACj4gKy4u
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsuLiBDb3B5cmlnaHQgKEMpIDIw
MTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gKwo+ICtSb2NrY2hp
cAo+ICs9PT09PT09PQo+ICsKPiArLi4gdG9jdHJlZTo6Cj4gKyAgIDptYXhkZXB0aDogMgo+ICsK
PiArICAgcm9ja2NoaXAKPiBkaWZmIC0tZ2l0IGEvZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlw
LnJzdCBiL2RvYy9ib2FyZC9yb2NrY2hpcC9yb2NrY2hpcC5yc3QKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAuLjYyNTE1NWU0MzIKPiAtLS0gL2Rldi9udWxsCj4gKysr
IGIvZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdAo+IEBAIC0wLDAgKzEsMTI4IEBACj4g
Ky4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsuLiBDb3B5cmlnaHQgKEMp
IDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gKwo+ICtST0NL
Q0hJUAo+ICs9PT09PT09PQo+ICsKPiArQWJvdXQgdGhpcwo+ICstLS0tLS0tLS0tCj4gKwo+ICtU
aGlzIGRvY3VtZW50IGRlc2NyaWJlcyB0aGUgaW5mb3JtYXRpb24gYWJvdXQgUm9ja2NoaXAgc3Vw
cG9ydGVkIGJvYXJkcwo+ICthbmQgaXQncyB1c2FnZSBzdGVwcy4KPiArCj4gK1JvY2tjaGlwIGJv
YXJkcwo+ICstLS0tLS0tLS0tLS0tLS0KPiArCj4gK1JvY2tjaGlwIGlzIFNvQyBzb2x1dGlvbnMg
cHJvdmlkZXIgZm9yIHRhYmxldHMgJiBQQ3MsIHN0cmVhbWluZyBtZWRpYQo+ICtUViBib3hlcywg
QUkgYXVkaW8gJiB2aXNpb24sIElvVCBoYXJkd2FyZS4KPiArCj4gK0Egd2lkZSByYW5nZSBvZiBS
b2NrY2hpcCBTb0NzIHdpdGggYXNzb2NpYXRlZCBib2FyZHNhcmUgc3VwcG9ydGVkIGluCj4gK21h
aW5saW5lIFUtQm9vdC4KPiArCj4gK0xpc3Qgb2YgbWFpbmxpbmUgc3VwcG9ydGVkIHJvY2tjaGlw
IGJvYXJkczoKPiArCj4gKyogcmszMjg4Cj4gKyAgICAgLSBFdmItUkszMjg4Cj4gKyAgICAgLSBG
aXJlZmx5LVJLMzI4OAo+ICsgICAgIC0gbXFtYWtlciBNaVFpCj4gKyAgICAgLSBQaHl0ZWMgUksz
Mjg4IFBDTS05NDcKPiArICAgICAtIFBvcE1ldGFsLVJLMzI4OAo+ICsgICAgIC0gUmFkeGEgUm9j
ayAyIFNxdWFyZQo+ICsgICAgIC0gVGlua2VyLVJLMzI4OAo+ICsgICAgIC0gR29vZ2xlIEplcnJ5
Cj4gKyAgICAgLSBHb29nbGUgTWlja2V5Cj4gKyAgICAgLSBHb29nbGUgTWlubmllCj4gKyAgICAg
LSBHb29nbGUgU3BlZWR5Cj4gKyAgICAgLSBBbWFydWxhIFZ5YXNhLVJLMzI4OAo+ICsqIHJrMzMy
OAo+ICsgICAgIC0gUm9ja2NoaXAgUkszMzI4IEVWQgo+ICsgICAgIC0gUGluZTY0IFJvY2s2NAo+
ICsqIHJrMzM2OAo+ICsgICAgIC0gR2Vla0JveAo+ICsgICAgIC0gUFg1IEVWQgo+ICsgICAgIC0g
Um9ja2NoaXAgc2hlZXAgYm9hcmQKPiArICAgICAtIFRoZW9icm9tYSBTeXN0ZW1zIFJLMzM2OC11
UTcgU29NCj4gKyogcmszMzk5Cj4gKyAgICAgLSA5NmJvYXJkcyBSSzMzOTkgRmljdXMKPiArICAg
ICAtIDk2Ym9hcmRzIFJvY2s5NjAKPiArICAgICAtIEZpcmVmbHktUkszMzk5IEJvYXJkCj4gKyAg
ICAgLSBGaXJlZmx5IFJPQy1SSzMzOTktUEMgQm9hcmQKPiArICAgICAtIEZyaWVuZGx5RWxlYyBO
YW5vUEMtVDQKPiArICAgICAtIEZyaWVuZGx5RWxlYyBOYW5vUGkgTTQKPiArICAgICAtIEZyaWVu
ZGx5QVJNIE5hbm9QaSBORU80Cj4gKyAgICAgLSBHb29nbGUgQm9iCj4gKyAgICAgLSBLaGFkYXMg
RWRnZQo+ICsgICAgIC0gS2hhZGFzIEVkZ2UtQ2FwdGFpbgo+ICsgICAgIC0gS2hhZGFzIEVkZ2Ut
Vgo+ICsgICAgIC0gT3JhbmdlIFBpIFJLMzM5OSBCb2FyZAo+ICsgICAgIC0gUGluZTY0IFJvY2tQ
cm82NAo+ICsgICAgIC0gUmFkeGEgUk9DSyBQaSA0Cj4gKyAgICAgLSBSb2NrY2hpcCBSSzMzOTkg
RXZhbHVhdGlvbiBCb2FyZAo+ICsgICAgIC0gVGhlb2Jyb21hIFN5c3RlbXMgUkszMzk5LVE3IFNv
TQo+ICsKPiArQnVpbGRpbmcKPiArLS0tLS0tLS0KPiArCj4gK1RGLUEKPiArXl5eXgo+ICsKPiAr
VEYtQSB3b3VsZCByZXF1aXJlIHRvIGJ1aWxkIGZvciBBUk02NCBSb2NrY2hpcCBTb0NzIHBsYXRm
b3Jtcy4KPiArCj4gK1RvIGJ1aWxkIFRGLUE6Ogo+ICsKPiArICAgICAgICBnaXQgY2xvbmUgaHR0
cHM6Ly9naXRodWIuY29tL0FSTS1zb2Z0d2FyZS9hcm0tdHJ1c3RlZC1maXJtd2FyZS5naXQKPiAr
ICAgICAgICBjZCBhcm0tdHJ1c3RlZC1maXJtd2FyZQo+ICsgICAgICAgIG1ha2UgcmVhbGNsZWFu
Cj4gKyAgICAgICAgbWFrZSBDUk9TU19DT01QSUxFPWFhcmNoNjQtbGludXgtZ251LSBQTEFUPXJr
MzM5OQo+ICsKPiArU3BlY2lmeSB0aGUgUExBVD0gd2l0aCBkZXNpcmVkIHJvY2tjaGlwIHBsYXRm
b3JtIHRvIGJ1aWxkIFRGLUEgZm9yLgo+ICsKPiArVS1Cb290Cj4gK15eXl5eXgo+ICsKPiArVG8g
YnVpbGQgcmszMzI4IGJvYXJkczo6Cj4gKwo+ICsgICAgICAgIGV4cG9ydCBCTDMxPS9wYXRoL3Rv
L2FybS10cnVzdGVkLWZpcm13YXJlL3RvL2JsMzEuZWxmCj4gKyAgICAgICAgbWFrZSBldmItcmsz
MzI4X2RlZmNvbmZpZwo+ICsgICAgICAgIG1ha2UKPiArCj4gK1RvIGJ1aWxkIHJrMzI4OCBib2Fy
ZHM6Ogo+ICsKPiArICAgICAgICBtYWtlIGV2Yi1yazMyODhfZGVmY29uZmlnCj4gKyAgICAgICAg
bWFrZQo+ICsKPiArVG8gYnVpbGQgcmszMzY4IGJvYXJkczo6Cj4gKwo+ICsgICAgICAgIGV4cG9y
dCBCTDMxPS9wYXRoL3RvL2FybS10cnVzdGVkLWZpcm13YXJlL3RvL2JsMzEuZWxmCj4gKyAgICAg
ICAgbWFrZSBldmItcHg1X2RlZmNvbmZpZwo+ICsgICAgICAgIG1ha2UKPiArCj4gK1RvIGJ1aWxk
IHJrMzM5OSBib2FyZHM6Ogo+ICsKPiArICAgICAgICBleHBvcnQgQkwzMT0vcGF0aC90by9hcm0t
dHJ1c3RlZC1maXJtd2FyZS90by9ibDMxLmVsZgo+ICsgICAgICAgIG1ha2UgZXZiLXJrMzM5OV9k
ZWZjb25maWcKPiArICAgICAgICBtYWtlCj4gKwo+ICtGbGFzaGluZwo+ICstLS0tLS0tLQo+ICsK
PiArU0QgQ2FyZAo+ICteXl5eXl5eCj4gKwo+ICtBbGwgcm9ja2NoaXAgcGxhdGZvcm1zLCBleGNl
cHQgcmszMTI4ICh3aGljaCBkb2Vzbid0IHVzZSBTUEwpIGFyZSBub3cKPiArc3VwcG9ydGluZyBz
aW5nbGUgYm9vdCBpbWFnZSB1c2luZyBiaW5tYW4gYW5kIHBhZF9jYXQuCj4gKwo+ICtUbyB3cml0
ZSBhbiBpbWFnZSB0aGF0IGJvb3RzIGZyb20gYW4gU0QgY2FyZCAoYXNzdW1lZCB0byBiZSAvZGV2
L3NkYSk6Ogo+ICsKPiArICAgICAgICBzdWRvIGRkIGlmPXUtYm9vdC1yb2NrY2hpcC5iaW4gb2Y9
L2Rldi9zZGEgc2Vlaz02NAo+ICsgICAgICAgIHN5bmMKPiArCj4gK1RPRE8KPiArLS0tLQo+ICsK
PiArLSBBZGQgcm9ja2NoaXAgaWRibG9hZGVyIGltYWdlIGJ1aWxkaW5nCj4gKy0gRGVzY3JpYmUg
c3RlcHMgZm9yIGVNTUMgZmxhc2hpbmcKPiArLSBBZGQgbWlzc2luZyBTb0MncyB3aXRoIGl0IGJv
YXJkcyBsaXN0Cj4gKwo+ICsuLiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNv
bT4KPiArLi4gVGh1IE9jdCAxNyAyMjozNjoxNCBJU1QgMjAxOQoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
