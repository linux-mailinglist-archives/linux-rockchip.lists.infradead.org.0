Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C3613218E
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 09:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EJpe5DuXlJNXWDk6IVHGq68rZlVPb7ShMPb5ItB5wds=; b=oP5VQPUV+Swkswk0RTX+uQfV/
	1k9frTPKBv6m48K0JbL1GhYcRZdi7fjooFL+BpDag5r6u9vMfqshCZ89WKHaHUO73XQFKBOsA8Pt6
	sf8vrLFBmsStEvDGuvImxMBCyJYT4ShS6lqIA5HxtfopD18DSEwjktjPXmzz0K263b7CPi1St5mUx
	f6L29rP6gM6LbEnKMhFxwX+Ee2hpeYZjqUQtkiHEZtdclE0+Hwj5p41Ul5VM8A6oc5VUiYVJAd5s/
	AKsVtyop/P74sDbiIwEk/7jKlKFLKZPaGEI3XClFFOHlNfnv+FZer/yJbLN8XSvzz8cq/PvJ2ya0D
	knqAtxt5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokQ0-0006uv-4a; Tue, 07 Jan 2020 08:40:52 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokPx-0006tj-1Z
 for linux-rockchip@lists.infradead.org; Tue, 07 Jan 2020 08:40:51 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 7BD9C275;
 Tue,  7 Jan 2020 16:40:44 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P9213T140438317037312S1578386437406667_; 
 Tue, 07 Jan 2020 16:40:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <58f3a9822380d60b1d64b80a8df9cc90>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: matwey.kornilov@gmail.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v6 6/6] doc: boards: Add rockchip documentation
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
 <20200104083806.3930-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <a2caeaa9-cfcc-539f-3999-b93ea02b9089@rock-chips.com>
Date: Tue, 7 Jan 2020 16:40:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200104083806.3930-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_004049_411540_0C428232 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMS80IOS4i+WNiDQ6MzgsIEphZ2FuIFRla2kgd3JvdGU6Cj4gUm9ja2NoaXAgaGFz
IGRvY3VtZW50YXRpb24gZmlsZSwgZG9jL1JFQURNRS5yb2NrY2hpcCBidXQKPiB3aGljaCBpcyBu
b3Qgc28gcmVhZGFibGUgdG8gYWRkIG9yIHVuZGVyc3RhbmQgdGhlIGV4aXN0aW5nCj4gY29udGVu
dHMuIEV2ZW4gdGhlIGZvcm1hdCB0aGF0IHN1cHBvcnQgaXMgbGVnYWN5IHJlYWRtZQo+IGluIFUt
Qm9vdC4KPgo+IEFkZCByb2NrY2hpcCBzcGVjaWZpYyBkb2N1bWVudGF0aW9uIGZpbGUgdXNpbmcg
bmV3IHJzdAo+IGZvcm1hdCwgd2hpY2ggZGVzY3JpYmVzIHRoZSBpbmZvcm1hdGlvbiBhYm91dCBS
b2NrY2hpcAo+IHN1cHBvcnRlZCBib2FyZHMgYW5kIGl0J3MgdXNhZ2Ugc3RlcHMuCj4KPiBBZGRl
ZCBtaW5pbWFsIGluZm9ybWF0aW9uIGFib3V0IHJrMzI4OCwgcmszMzI4LCByazMzNjgKPiBhbmQg
cmszMzk5IGJvYXJkcyBhbmQgdXNhZ2UuIFRoaXMgd291bGQgaW5kZWVkIHVwZGF0ZWQKPiBmdXJ0
aGVyIGJhc2VkIG9uIHRoZSByZXF1aXJlbWVudHMgYW5kIHVwZGF0ZXMuCj4KPiBDYzogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92
IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kg
PGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZG9jL2Jv
YXJkL3JvY2tjaGlwL2luZGV4LnJzdCAgICB8ICAxMCArKysKPiAgIGRvYy9ib2FyZC9yb2NrY2hp
cC9yb2NrY2hpcC5yc3QgfCAxMzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAg
IDIgZmlsZXMgY2hhbmdlZCwgMTQwIGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkb2MvYm9hcmQvcm9ja2NoaXAvaW5kZXgucnN0Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZG9j
L2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdAo+Cj4gZGlmZiAtLWdpdCBhL2RvYy9ib2FyZC9y
b2NrY2hpcC9pbmRleC5yc3QgYi9kb2MvYm9hcmQvcm9ja2NoaXAvaW5kZXgucnN0Cj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi4wYzM3N2U5YmJiCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL2RvYy9ib2FyZC9yb2NrY2hpcC9pbmRleC5yc3QKPiBAQCAtMCwwICsxLDEw
IEBACj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsuLiBDb3B5cmln
aHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gKwo+
ICtSb2NrY2hpcAo+ICs9PT09PT09PQo+ICsKPiArLi4gdG9jdHJlZTo6Cj4gKyAgIDptYXhkZXB0
aDogMgo+ICsKPiArICAgcm9ja2NoaXAKPiBkaWZmIC0tZ2l0IGEvZG9jL2JvYXJkL3JvY2tjaGlw
L3JvY2tjaGlwLnJzdCBiL2RvYy9ib2FyZC9yb2NrY2hpcC9yb2NrY2hpcC5yc3QKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAuLjZjMzRmMWFiOTkKPiAtLS0gL2Rldi9u
dWxsCj4gKysrIGIvZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdAo+IEBAIC0wLDAgKzEs
MTMwIEBACj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsuLiBDb3B5
cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4g
Kwo+ICtST0NLQ0hJUAo+ICs9PT09PT09PQo+ICsKPiArQWJvdXQgdGhpcwo+ICstLS0tLS0tLS0t
Cj4gKwo+ICtUaGlzIGRvY3VtZW50IGRlc2NyaWJlcyB0aGUgaW5mb3JtYXRpb24gYWJvdXQgUm9j
a2NoaXAgc3VwcG9ydGVkIGJvYXJkcwo+ICthbmQgaXQncyB1c2FnZSBzdGVwcy4KPiArCj4gK1Jv
Y2tjaGlwIGJvYXJkcwo+ICstLS0tLS0tLS0tLS0tLS0KPiArCj4gK1JvY2tjaGlwIGlzIFNvQyBz
b2x1dGlvbnMgcHJvdmlkZXIgZm9yIHRhYmxldHMgJiBQQ3MsIHN0cmVhbWluZyBtZWRpYQo+ICtU
ViBib3hlcywgQUkgYXVkaW8gJiB2aXNpb24sIElvVCBoYXJkd2FyZS4KPiArCj4gK0Egd2lkZSBy
YW5nZSBvZiBSb2NrY2hpcCBTb0NzIHdpdGggYXNzb2NpYXRlZCBib2FyZHNhcmUgc3VwcG9ydGVk
IGluCj4gK21haW5saW5lIFUtQm9vdC4KPiArCj4gK0xpc3Qgb2YgbWFpbmxpbmUgc3VwcG9ydGVk
IHJvY2tjaGlwIGJvYXJkczoKPiArCj4gKyogcmszMjg4Cj4gKyAgICAgLSBFdmItUkszMjg4Cj4g
KyAgICAgLSBGaXJlZmx5LVJLMzI4OAo+ICsgICAgIC0gbXFtYWtlciBNaVFpCj4gKyAgICAgLSBQ
aHl0ZWMgUkszMjg4IFBDTS05NDcKPiArICAgICAtIFBvcE1ldGFsLVJLMzI4OAo+ICsgICAgIC0g
UmFkeGEgUm9jayAyIFNxdWFyZQo+ICsgICAgIC0gVGlua2VyLVJLMzI4OAo+ICsgICAgIC0gR29v
Z2xlIEplcnJ5Cj4gKyAgICAgLSBHb29nbGUgTWlja2V5Cj4gKyAgICAgLSBHb29nbGUgTWlubmll
Cj4gKyAgICAgLSBHb29nbGUgU3BlZWR5Cj4gKyAgICAgLSBBbWFydWxhIFZ5YXNhLVJLMzI4OAo+
ICsqIHJrMzMyOAo+ICsgICAgIC0gUm9ja2NoaXAgUkszMzI4IEVWQgo+ICsgICAgIC0gUGluZTY0
IFJvY2s2NAo+ICsqIHJrMzM2OAo+ICsgICAgIC0gR2Vla0JveAo+ICsgICAgIC0gUFg1IEVWQgo+
ICsgICAgIC0gUm9ja2NoaXAgc2hlZXAgYm9hcmQKPiArICAgICAtIFRoZW9icm9tYSBTeXN0ZW1z
IFJLMzM2OC11UTcgU29NCj4gKyogcmszMzk5Cj4gKyAgICAgLSA5NmJvYXJkcyBSSzMzOTkgRmlj
dXMKPiArICAgICAtIDk2Ym9hcmRzIFJvY2s5NjAKPiArICAgICAtIEZpcmVmbHktUkszMzk5IEJv
YXJkCj4gKyAgICAgLSBGaXJlZmx5IFJPQy1SSzMzOTktUEMgQm9hcmQKPiArICAgICAtIEZyaWVu
ZGx5RWxlYyBOYW5vUEMtVDQKPiArICAgICAtIEZyaWVuZGx5RWxlYyBOYW5vUGkgTTQKPiArICAg
ICAtIEZyaWVuZGx5QVJNIE5hbm9QaSBORU80Cj4gKyAgICAgLSBHb29nbGUgQm9iCj4gKyAgICAg
LSBLaGFkYXMgRWRnZQo+ICsgICAgIC0gS2hhZGFzIEVkZ2UtQ2FwdGFpbgo+ICsgICAgIC0gS2hh
ZGFzIEVkZ2UtVgo+ICsgICAgIC0gT3JhbmdlIFBpIFJLMzM5OSBCb2FyZAo+ICsgICAgIC0gUGlu
ZTY0IFJvY2tQcm82NAo+ICsgICAgIC0gUmFkeGEgUk9DSyBQaSA0Cj4gKyAgICAgLSBSb2NrY2hp
cCBSSzMzOTkgRXZhbHVhdGlvbiBCb2FyZAo+ICsgICAgIC0gVGhlb2Jyb21hIFN5c3RlbXMgUksz
Mzk5LVE3IFNvTQo+ICsKPiArQnVpbGRpbmcKPiArLS0tLS0tLS0KPiArCj4gK1RGLUEKPiArXl5e
Xgo+ICsKPiArVEYtQSB3b3VsZCByZXF1aXJlIHRvIGJ1aWxkIGZvciBBUk02NCBSb2NrY2hpcCBT
b0NzIHBsYXRmb3Jtcy4KPiArCj4gK1RvIGJ1aWxkIFRGLUE6Ogo+ICsKPiArICAgICAgICBnaXQg
Y2xvbmUgaHR0cHM6Ly9naXRodWIuY29tL0FSTS1zb2Z0d2FyZS9hcm0tdHJ1c3RlZC1maXJtd2Fy
ZS5naXQKPiArICAgICAgICBjZCBhcm0tdHJ1c3RlZC1maXJtd2FyZQo+ICsgICAgICAgIG1ha2Ug
cmVhbGNsZWFuCj4gKyAgICAgICAgbWFrZSBDUk9TU19DT01QSUxFPWFhcmNoNjQtbGludXgtZ251
LSBQTEFUPXJrMzM5OQo+ICsKPiArU3BlY2lmeSB0aGUgUExBVD0gd2l0aCBkZXNpcmVkIHJvY2tj
aGlwIHBsYXRmb3JtIHRvIGJ1aWxkIFRGLUEgZm9yLgo+ICsKPiArVS1Cb290Cj4gK15eXl5eXgo+
ICsKPiArVG8gYnVpbGQgcmszMzI4IGJvYXJkczo6Cj4gKwo+ICsgICAgICAgIGV4cG9ydCBCTDMx
PS9wYXRoL3RvL2FybS10cnVzdGVkLWZpcm13YXJlL3RvL2JsMzEuZWxmCj4gKyAgICAgICAgbWFr
ZSBldmItcmszMzI4X2RlZmNvbmZpZwo+ICsgICAgICAgIG1ha2UKPiArCj4gK1RvIGJ1aWxkIHJr
MzI4OCBib2FyZHM6Ogo+ICsKPiArICAgICAgICBtYWtlIGV2Yi1yazMyODhfZGVmY29uZmlnCj4g
KyAgICAgICAgbWFrZQo+ICsKPiArVG8gYnVpbGQgcmszMzY4IGJvYXJkczo6Cj4gKwo+ICsgICAg
ICAgIGV4cG9ydCBCTDMxPS9wYXRoL3RvL2FybS10cnVzdGVkLWZpcm13YXJlL3RvL2JsMzEuZWxm
Cj4gKyAgICAgICAgbWFrZSBldmItcHg1X2RlZmNvbmZpZwo+ICsgICAgICAgIG1ha2UKPiArCj4g
K1RvIGJ1aWxkIHJrMzM5OSBib2FyZHM6Ogo+ICsKPiArICAgICAgICBleHBvcnQgQkwzMT0vcGF0
aC90by9hcm0tdHJ1c3RlZC1maXJtd2FyZS90by9ibDMxLmVsZgo+ICsgICAgICAgIG1ha2UgZXZi
LXJrMzM5OV9kZWZjb25maWcKPiArICAgICAgICBtYWtlCj4gKwo+ICtGbGFzaGluZwo+ICstLS0t
LS0tLQo+ICsKPiArU0QgQ2FyZAo+ICteXl5eXl5eCj4gKwo+ICtBbGwgcm9ja2NoaXAgcGxhdGZv
cm1zLCBleGNlcHQgcmszMTI4ICh3aGljaCBkb2Vzbid0IHVzZSBTUEwpIGFyZSBub3cKPiArc3Vw
cG9ydGluZyBzaW5nbGUgYm9vdCBpbWFnZSB1c2luZyBiaW5tYW4gYW5kIHBhZF9jYXQuCj4gKwo+
ICtUbyB3cml0ZSBhbiBpbWFnZSB0aGF0IGJvb3RzIGZyb20gYW4gU0QgY2FyZCAoYXNzdW1lZCB0
byBiZSAvZGV2L3NkYSk6Ogo+ICsKPiArICAgICAgICBzdWRvIGRkIGlmPXUtYm9vdC1yb2NrY2hp
cC5iaW4gb2Y9L2Rldi9zZGEgc2Vlaz02NAo+ICsgICAgICAgIHN5bmMKPiArCj4gK1RPRE8KPiAr
LS0tLQo+ICsKPiArLSBBZGQgcm9ja2NoaXAgaWRibG9hZGVyIGltYWdlIGJ1aWxkaW5nCj4gKy0g
QWRkIHJvY2tjaGlwIFRQTCBpbWFnZSBidWlsZGluZwo+ICstIERvY3VtZW50IFNQSSBmbGFzaCBi
b290Cj4gKy0gRGVzY3JpYmUgc3RlcHMgZm9yIGVNTUMgZmxhc2hpbmcKPiArLSBBZGQgbWlzc2lu
ZyBTb0MncyB3aXRoIGl0IGJvYXJkcyBsaXN0Cj4gKwo+ICsuLiBKYWdhbiBUZWtpIDxqYWdhbkBh
bWFydWxhc29sdXRpb25zLmNvbT4KPiArLi4gU2F0IEphbiAgNCAxNDowMDo1NCBJU1QgMjAyMAoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
