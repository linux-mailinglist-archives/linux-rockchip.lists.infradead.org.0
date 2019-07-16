Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19386A916
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/SKhBfpZS4rLVDCVRmb8gi/gDBEJyDN6gLH2w8lyWIc=; b=DN6SMGcI0j33dTDbPnlU6dNmn
	PZiznJr58YWv1ir1dBft97zDArC/IifD1Hs9CGRo2ySS+T+zIMUeWoqNi8vpwdg2avWUStGMQxv+T
	GT9XNiF39hEsAnOMh00+sIDOWJ1KsO8St3ZunVfywSZn5mKXgyhqgCiP9xy9gInJSwzqGk1qgqzbP
	MOUeSD8Yxnnkkyp8ikivlCkAsddMMqV2dlXlcjKESoCZ3PkVIug793v9UjktxKpzefzIqDARfR7g+
	fSYCMmQx83nVMLHapThfjxEUXBCfYzUrRj7cd2auc4UWm9l18hfZrjeaIVj7IZAj8xYkuuuj6ifff
	d5ZitnnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN70-0006MJ-TH; Tue, 16 Jul 2019 13:03:18 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN6x-0006Ll-7p
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:03:16 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.105])
 by regular1.263xmail.com (Postfix) with ESMTP id 781A733C;
 Tue, 16 Jul 2019 21:03:13 +0800 (CST)
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
 P29430T139996673603328S1563282182974922_; 
 Tue, 16 Jul 2019 21:03:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3676ab2ef34137c70b59c2c307718016>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 14/57] ram: rk3399: Update cs1_row to use sys_reg3
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-15-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <16e6a734-9790-ec6d-5ba5-f6a77b4cd7ca@rock-chips.com>
Date: Tue, 16 Jul 2019 21:03:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-15-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060315_690624_DF742E95 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IGNzMV9yb3cgY2Fu
IGhhbmRsZSB0aGUgcG11IHZpYSBzeXNfcmVnMiBhbmQgc3lzX3JlZzMgd2hpbGUKPiBjb25maWd1
cmluZyB0aGUgZHJhbSBpbnN0ZWFkIG9mIGp1c3Qgc3lzX3JlZzIuCj4KPiBTbywgdXBkYXRlIGNz
MV9yb3cgbWFjcm8gdG8gbWFrZSB1c2Ugb2YgYm90aCBzeXNfcmVnMiwKPiBzeXNfcmVnMy4KPgo+
IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdl
ZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKg
LSBLZXZlcgo+IC0tLQo+ICAgYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJh
bV9jb21tb24uaCB8IDEwICsrKysrKysrLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFt
X3JrMzM5OS5jICAgICAgICAgICAgICAgfCAgNCArKystCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
aW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCBiL2FyY2gvYXJtL2luY2x1
ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBpbmRleCBmNzQzNzcyMjVjLi45
Y2Q5ZjNiOTY5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2No
aXAvc2RyYW1fY29tbW9uLmgKPiArKysgYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tj
aGlwL3NkcmFtX2NvbW1vbi5oCj4gQEAgLTkyLDggKzkyLDYgQEAgc3RydWN0IHNkcmFtX2Jhc2Vf
cGFyYW1zIHsKPiAgICNkZWZpbmUgU1lTX1JFR19DUzBfUk9XX01BU0sJCTMKPiAgICNkZWZpbmUg
U1lTX1JFR19DUzFfUk9XX1NISUZUKGNoKQkoNCArIChjaCkgKiAxNikKPiAgICNkZWZpbmUgU1lT
X1JFR19DUzFfUk9XX01BU0sJCTMKPiAtI2RlZmluZSBTWVNfUkVHX0VOQ19DUzFfUk9XKG4sIGNo
KQkoKChuKSAtIDEzKSA8PCBcCj4gLQkJCQkJU1lTX1JFR19DUzFfUk9XX1NISUZUKGNoKSkKPiAg
ICNkZWZpbmUgU1lTX1JFR19CV19TSElGVChjaCkJCSgyICsgKGNoKSAqIDE2KQo+ICAgI2RlZmlu
ZSBTWVNfUkVHX0JXX01BU0sJCQkzCj4gICAjZGVmaW5lIFNZU19SRUdfRU5DX0JXKG4sIGNoKQkJ
KCgyID4+IChuKSkgPDwgU1lTX1JFR19CV19TSElGVChjaCkpCj4gQEAgLTEwNyw2ICsxMDUsMTQg
QEAgc3RydWN0IHNkcmFtX2Jhc2VfcGFyYW1zIHsKPiAgIAkJCQkgICAgICg1ICsgMiAqIChjaCkp
OyBcCj4gICAJCX0gd2hpbGUgKDApCj4gICAKPiArI2RlZmluZSBTWVNfUkVHX0VOQ19DUzFfUk9X
KG4sIG9zX3JlZzIsIG9zX3JlZzMsIGNoKSBkbyB7IFwKPiArCQkJKG9zX3JlZzIpICY9ICh+KDB4
MyA8PCAoNCArIDE2ICogKGNoKSkpKTsgXAo+ICsJCQkob3NfcmVnMykgJj0gKH4oMHgxIDw8ICg0
ICsgMiAqIChjaCkpKSk7IFwKPiArCQkJKG9zX3JlZzIpIHw9ICgoKG4pIC0gMTMpICYgMHgzKSA8
PCAoNCArIDE2ICogKGNoKSk7IFwKPiArCQkJKG9zX3JlZzMpIHw9ICgoKChuKSAtIDEzKSAmIDB4
NCkgPj4gMikgPDwgXAo+ICsJCQkJICAgICAoNCArIDIgKiAoY2gpKTsgXAo+ICsJCX0gd2hpbGUg
KDApCj4gKwo+ICAgLyogR2V0IHNkcmFtIHNpemUgZGVjb2RlIGZyb20gcmVnICovCj4gICBzaXpl
X3Qgcm9ja2NoaXBfc2RyYW1fc2l6ZShwaHlzX2FkZHJfdCByZWcpOwo+ICAgCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9j
a2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCA3MDg2N2NiZDVmLi4xMjIyZGEzOWMyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTA5NSwxMCArMTA5NSwxMiBA
QCBzdGF0aWMgdm9pZCBkcmFtX2FsbF9jb25maWcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAg
IAkJc3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfUkFOSyhpbmZvLT5jYXBfaW5mby5yYW5rLCBjaGFu
bmVsKTsKPiAgIAkJc3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfQ09MKGluZm8tPmNhcF9pbmZvLmNv
bCwgY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcyIHw9IFNZU19SRUdfRU5DX0JLKGluZm8tPmNhcF9p
bmZvLmJrLCBjaGFubmVsKTsKPiAtCQlzeXNfcmVnMiB8PSBTWVNfUkVHX0VOQ19DUzFfUk9XKGlu
Zm8tPmNhcF9pbmZvLmNzMV9yb3csIGNoYW5uZWwpOwo+ICAgCQlzeXNfcmVnMiB8PSBTWVNfUkVH
X0VOQ19CVyhpbmZvLT5jYXBfaW5mby5idywgY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcyIHw9IFNZ
U19SRUdfRU5DX0RCVyhpbmZvLT5jYXBfaW5mby5kYncsIGNoYW5uZWwpOwo+ICAgCQlTWVNfUkVH
X0VOQ19DUzBfUk9XKGluZm8tPmNhcF9pbmZvLmNzMF9yb3csIHN5c19yZWcyLCBzeXNfcmVnMywg
Y2hhbm5lbCk7Cj4gKwkJaWYgKGluZm8tPmNhcF9pbmZvLmNzMV9yb3cpCj4gKwkJCVNZU19SRUdf
RU5DX0NTMV9ST1coaW5mby0+Y2FwX2luZm8uY3MxX3Jvdywgc3lzX3JlZzIsCj4gKwkJCQkJICAg
IHN5c19yZWczLCBjaGFubmVsKTsKPiAgIAo+ICAgCQlkZHJfbXNjaF9yZWdzID0gZHJhbS0+Y2hh
bltjaGFubmVsXS5tc2NoOwo+ICAgCQlub2NfdGltaW5nID0gJnBhcmFtcy0+Y2hbY2hhbm5lbF0u
bm9jX3RpbWluZ3M7CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
