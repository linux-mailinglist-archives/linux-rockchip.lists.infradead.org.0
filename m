Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7C06890B
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 14:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IBV7DzYH5wD8cXdw32NOOuT08AkWoYgb10AkpTitacY=; b=a6fnqj0fsGd+w3gvK73iR9zu6
	Exa4V88zh85q8KHY1ei69I2Frpu8EwmITqHHX/MWfF+uLKo/mc41MB5+zO1q00IarbneWKSEw7tAt
	x+1rhFjIQ2daRi9Q4dlUoflDKYwVfIR2+vtF1kjSUWUHWHFm6oIdrTH+2FMEaRahG6oS5NOco4GiY
	6foaZp/WwC0El9UtNOuPYWOKCN3e2cxlh6Dg2KqK528h2iy2N92XgkO4S4LEOzWk1jjOfZKw+GJYp
	cXSoOPzNvGkyHjwfmcIoMXnjWwBdz9UPaGARvyI1aG+s3/L5IK48+qYT09J6Xi2ay7i5c+ci1rHzA
	8uoN4qT2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0H9-00033X-UB; Mon, 15 Jul 2019 12:40:15 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0H6-0002zf-6z
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 12:40:13 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.134])
 by regular1.263xmail.com (Postfix) with ESMTP id 23A6C3DD;
 Mon, 15 Jul 2019 20:40:07 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P13726T140423366420224S1563194400035519_; 
 Mon, 15 Jul 2019 20:40:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <034a3235c940d82f017bef436d410e11>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 08/99] ram: rk3399: Clear PI_175 interrupts in data
 training
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
 <20190617073252.27810-9-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4501bece-3331-575c-646f-05b07ec954b5@rock-chips.com>
Date: Mon, 15 Jul 2019 20:39:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190617073252.27810-9-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054012_612222_C966692C 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNi8xNyDkuIvljYgzOjMxLCBKYWdhbiBUZWtpIHdyb3RlOgo+IENsZWFyIHRoZSBQ
SV8xNzUgaW50ZXJydXB0cyBiZWZvcmUgcHJvY2Vzc2luZyBhY3R1YWwKPiBkYXRhIHRyYWluaW5n
IGluIGFsbCByZWxldmFudCBjYWxscy4KPgo+IFRoaXMgd291bGQgaGVscCB0byBjbGVhciBpbnRl
cnJ1cHQgZnJvbSBwcmV2aW91cyB0cmFpbmluZy4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBD
aGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVy
cy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAxNSArKysrKysrKysrKysrKysKPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9y
YW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9y
azMzOTkuYwo+IGluZGV4IDIwYTNlODljMTcuLjE4OTg0NjZiNGMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2Nr
Y2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC02MTcsNiArNjE3LDkgQEAgc3RhdGljIGludCBkYXRh
X3RyYWluaW5nX2NhKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+
ICAgCXUzMiBvYnNfMCwgb2JzXzEsIG9ic18yLCBvYnNfZXJyID0gMDsKPiAgIAl1MzIgcmFuayA9
IHBhcmFtcy0+Y2hbY2hhbm5lbF0ucmFuazsKPiAgIAo+ICsJLyogY2xlYXIgaW50ZXJydXB0LFBJ
XzE3NSBQSV9JTlRfQUNLOldSOjA6MTcgKi8KPiArCXdyaXRlbCgweDAwMDAzZjdjLCAoJmRlbmFs
aV9waVsxNzVdKSk7Cj4gKwo+ICAgCWZvciAoaSA9IDA7IGkgPCByYW5rOyBpKyspIHsKPiAgIAkJ
c2VsZWN0X3Blcl9jc190cmFpbmluZ19pbmRleChjaGFuLCBpKTsKPiAgIAo+IEBAIC02NzEsNiAr
Njc0LDkgQEAgc3RhdGljIGludCBkYXRhX3RyYWluaW5nX3dsKGNvbnN0IHN0cnVjdCBjaGFuX2lu
Zm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+ICAgCXUzMiBvYnNfMCwgb2JzXzEsIG9ic18yLCBvYnNf
Mywgb2JzX2VyciA9IDA7Cj4gICAJdTMyIHJhbmsgPSBwYXJhbXMtPmNoW2NoYW5uZWxdLnJhbms7
Cj4gICAKPiArCS8qIGNsZWFyIGludGVycnVwdCxQSV8xNzUgUElfSU5UX0FDSzpXUjowOjE3ICov
Cj4gKwl3cml0ZWwoMHgwMDAwM2Y3YywgKCZkZW5hbGlfcGlbMTc1XSkpOwo+ICsKPiAgIAlmb3Ig
KGkgPSAwOyBpIDwgcmFuazsgaSsrKSB7Cj4gICAJCXNlbGVjdF9wZXJfY3NfdHJhaW5pbmdfaW5k
ZXgoY2hhbiwgaSk7Cj4gICAKPiBAQCAtNzMwLDYgKzczNiw5IEBAIHN0YXRpYyBpbnQgZGF0YV90
cmFpbmluZ19yZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLCB1MzIgY2hhbm5lbCwKPiAg
IAl1MzIgb2JzXzAsIG9ic18xLCBvYnNfMiwgb2JzXzMsIG9ic19lcnIgPSAwOwo+ICAgCXUzMiBy
YW5rID0gcGFyYW1zLT5jaFtjaGFubmVsXS5yYW5rOwo+ICAgCj4gKwkvKiBjbGVhciBpbnRlcnJ1
cHQsUElfMTc1IFBJX0lOVF9BQ0s6V1I6MDoxNyAqLwo+ICsJd3JpdGVsKDB4MDAwMDNmN2MsICgm
ZGVuYWxpX3BpWzE3NV0pKTsKPiArCj4gICAJZm9yIChpID0gMDsgaSA8IHJhbms7IGkrKykgewo+
ICAgCQlzZWxlY3RfcGVyX2NzX3RyYWluaW5nX2luZGV4KGNoYW4sIGkpOwo+ICAgCj4gQEAgLTc4
OSw2ICs3OTgsOSBAQCBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmdfcmwoY29uc3Qgc3RydWN0IGNo
YW5faW5mbyAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gICAJdTMyIGksIHRtcDsKPiAgIAl1MzIgcmFu
ayA9IHBhcmFtcy0+Y2hbY2hhbm5lbF0ucmFuazsKPiAgIAo+ICsJLyogY2xlYXIgaW50ZXJydXB0
LFBJXzE3NSBQSV9JTlRfQUNLOldSOjA6MTcgKi8KPiArCXdyaXRlbCgweDAwMDAzZjdjLCAoJmRl
bmFsaV9waVsxNzVdKSk7Cj4gKwo+ICAgCWZvciAoaSA9IDA7IGkgPCByYW5rOyBpKyspIHsKPiAg
IAkJc2VsZWN0X3Blcl9jc190cmFpbmluZ19pbmRleChjaGFuLCBpKTsKPiAgIAo+IEBAIC04MzQs
NiArODQ2LDkgQEAgc3RhdGljIGludCBkYXRhX3RyYWluaW5nX3dkcWwoY29uc3Qgc3RydWN0IGNo
YW5faW5mbyAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gICAJdTMyIGksIHRtcDsKPiAgIAl1MzIgcmFu
ayA9IHBhcmFtcy0+Y2hbY2hhbm5lbF0ucmFuazsKPiAgIAo+ICsJLyogY2xlYXIgaW50ZXJydXB0
LFBJXzE3NSBQSV9JTlRfQUNLOldSOjA6MTcgKi8KPiArCXdyaXRlbCgweDAwMDAzZjdjLCAoJmRl
bmFsaV9waVsxNzVdKSk7Cj4gKwo+ICAgCWZvciAoaSA9IDA7IGkgPCByYW5rOyBpKyspIHsKPiAg
IAkJc2VsZWN0X3Blcl9jc190cmFpbmluZ19pbmRleChjaGFuLCBpKTsKPiAgIAoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
