Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096676A30A
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Uo0Ie9EoKmMu3zC2dfi4waZ495AY6k0xnROkSzN5g8=; b=Q6UqoFbFaTJ05W0qYfpXsECyd
	PribGmGiB/moBl/db7Tp8i21aT7zv/MEZRAGjLYgewoNuVHYL6LVke2yxkamG7SVmDAfzb+NQYdcy
	jNrDxrw0LRPTLTosN7n1A/pBU+/m1Pd26LnIwJlKahLb4T1MeqAxg5Gf3Wf8YTcnXrnEA3Dm8xxwt
	m933NRIRyyhFUF+7bxLHs/VXRdyQL3I2ULf9y0eXW4WAR1m6Lji5yr02U38f0VrAdMCBwu15EbnpL
	98U94uI771ss41y7WtLCSYOGb2ny/Z8rcFGQKnb3sn4It27A9KXf5Q5SNXUxDrMv6Kb6RL2ZyMi27
	87SyUwbJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI0z-00053T-6W; Tue, 16 Jul 2019 07:36:45 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI0w-000534-DD
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:36:44 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.239])
 by regular1.263xmail.com (Postfix) with ESMTP id D155A2E7;
 Tue, 16 Jul 2019 15:36:40 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21966T140610880333568S1563262597881396_; 
 Tue, 16 Jul 2019 15:36:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <30962504ef283b1746805a413f40d0e9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 02/18] ram: rk3399: Clear PI_175 interrupts in data
 training
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <fd9c2668-fc60-bd15-8c1e-87e0ec1a4f21@rock-chips.com>
Date: Tue, 16 Jul 2019 15:36:38 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003642_776656_63AA413F 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IENsZWFyIHRoZSBQ
SV8xNzUgaW50ZXJydXB0cyBiZWZvcmUgcHJvY2Vzc2luZyBhY3R1YWwKPiBkYXRhIHRyYWluaW5n
IGluIGFsbCByZWxldmFudCBjYWxscy4KPgo+IFRoaXMgd291bGQgaGVscCB0byBjbGVhciBpbnRl
cnJ1cHQgZnJvbSBwcmV2aW91cyB0cmFpbmluZy4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBD
aGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVy
cy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAxNSArKysrKysrKysrKysrKysKPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9y
YW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9y
azMzOTkuYwo+IGluZGV4IGU5YzBmZGYyZDQuLmZlMjYxNDRmMjcgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2Nr
Y2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC02MjcsNiArNjI3LDkgQEAgc3RhdGljIGludCBkYXRh
X3RyYWluaW5nX2NhKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+
ICAgCXUzMiBvYnNfMCwgb2JzXzEsIG9ic18yLCBvYnNfZXJyID0gMDsKPiAgIAl1MzIgcmFuayA9
IHBhcmFtcy0+Y2hbY2hhbm5lbF0uY2FwX2luZm8ucmFuazsKPiAgIAo+ICsJLyogY2xlYXIgaW50
ZXJydXB0LFBJXzE3NSBQSV9JTlRfQUNLOldSOjA6MTcgKi8KPiArCXdyaXRlbCgweDAwMDAzZjdj
LCAoJmRlbmFsaV9waVsxNzVdKSk7Cj4gKwo+ICAgCWZvciAoaSA9IDA7IGkgPCByYW5rOyBpKysp
IHsKPiAgIAkJc2VsZWN0X3Blcl9jc190cmFpbmluZ19pbmRleChjaGFuLCBpKTsKPiAgIAo+IEBA
IC02ODEsNiArNjg0LDkgQEAgc3RhdGljIGludCBkYXRhX3RyYWluaW5nX3dsKGNvbnN0IHN0cnVj
dCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+ICAgCXUzMiBvYnNfMCwgb2JzXzEsIG9i
c18yLCBvYnNfMywgb2JzX2VyciA9IDA7Cj4gICAJdTMyIHJhbmsgPSBwYXJhbXMtPmNoW2NoYW5u
ZWxdLmNhcF9pbmZvLnJhbms7Cj4gICAKPiArCS8qIGNsZWFyIGludGVycnVwdCxQSV8xNzUgUElf
SU5UX0FDSzpXUjowOjE3ICovCj4gKwl3cml0ZWwoMHgwMDAwM2Y3YywgKCZkZW5hbGlfcGlbMTc1
XSkpOwo+ICsKPiAgIAlmb3IgKGkgPSAwOyBpIDwgcmFuazsgaSsrKSB7Cj4gICAJCXNlbGVjdF9w
ZXJfY3NfdHJhaW5pbmdfaW5kZXgoY2hhbiwgaSk7Cj4gICAKPiBAQCAtNzQwLDYgKzc0Niw5IEBA
IHN0YXRpYyBpbnQgZGF0YV90cmFpbmluZ19yZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFu
LCB1MzIgY2hhbm5lbCwKPiAgIAl1MzIgb2JzXzAsIG9ic18xLCBvYnNfMiwgb2JzXzMsIG9ic19l
cnIgPSAwOwo+ICAgCXUzMiByYW5rID0gcGFyYW1zLT5jaFtjaGFubmVsXS5jYXBfaW5mby5yYW5r
Owo+ICAgCj4gKwkvKiBjbGVhciBpbnRlcnJ1cHQsUElfMTc1IFBJX0lOVF9BQ0s6V1I6MDoxNyAq
Lwo+ICsJd3JpdGVsKDB4MDAwMDNmN2MsICgmZGVuYWxpX3BpWzE3NV0pKTsKPiArCj4gICAJZm9y
IChpID0gMDsgaSA8IHJhbms7IGkrKykgewo+ICAgCQlzZWxlY3RfcGVyX2NzX3RyYWluaW5nX2lu
ZGV4KGNoYW4sIGkpOwo+ICAgCj4gQEAgLTc5OSw2ICs4MDgsOSBAQCBzdGF0aWMgaW50IGRhdGFf
dHJhaW5pbmdfcmwoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwgdTMyIGNoYW5uZWwsCj4g
ICAJdTMyIGksIHRtcDsKPiAgIAl1MzIgcmFuayA9IHBhcmFtcy0+Y2hbY2hhbm5lbF0uY2FwX2lu
Zm8ucmFuazsKPiAgIAo+ICsJLyogY2xlYXIgaW50ZXJydXB0LFBJXzE3NSBQSV9JTlRfQUNLOldS
OjA6MTcgKi8KPiArCXdyaXRlbCgweDAwMDAzZjdjLCAoJmRlbmFsaV9waVsxNzVdKSk7Cj4gKwo+
ICAgCWZvciAoaSA9IDA7IGkgPCByYW5rOyBpKyspIHsKPiAgIAkJc2VsZWN0X3Blcl9jc190cmFp
bmluZ19pbmRleChjaGFuLCBpKTsKPiAgIAo+IEBAIC04NDQsNiArODU2LDkgQEAgc3RhdGljIGlu
dCBkYXRhX3RyYWluaW5nX3dkcWwoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwgdTMyIGNo
YW5uZWwsCj4gICAJdTMyIGksIHRtcDsKPiAgIAl1MzIgcmFuayA9IHBhcmFtcy0+Y2hbY2hhbm5l
bF0uY2FwX2luZm8ucmFuazsKPiAgIAo+ICsJLyogY2xlYXIgaW50ZXJydXB0LFBJXzE3NSBQSV9J
TlRfQUNLOldSOjA6MTcgKi8KPiArCXdyaXRlbCgweDAwMDAzZjdjLCAoJmRlbmFsaV9waVsxNzVd
KSk7Cj4gKwo+ICAgCWZvciAoaSA9IDA7IGkgPCByYW5rOyBpKyspIHsKPiAgIAkJc2VsZWN0X3Bl
cl9jc190cmFpbmluZ19pbmRleChjaGFuLCBpKTsKPiAgIAoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
