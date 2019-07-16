Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCACF6A917
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vSA670ilWUzTZBwlCmepsADQuCVjGrHP6JgSCKausAw=; b=qayYBBpE7H6GoLgG74WQwlkLQ
	qBX+KwLCQ2dej7b1jwtDspmOOJEPqrCXLjYPg7r6KFYEYRyhs0Ohcl3G4pqkPTckfbLlcBTW98Fg5
	VeOjc9tDt+QCKBNs2L3cHZy9RkJyBAoLXnL1XvDud2gyTgW1On1ADWeOD9wCK9eE8ama6hwLzt4kV
	SpvCIAs2ZXBP88ZWxakEhPbK0VPK1cf91X0hkWCkytA+WjW0ihrbJAnxGx8yGY0KlP7u3r5vIkr4S
	ZFUR8yZ6rk8HHtdpe1BpimSoqjy2SJ12N5aF1k34ASXqOh0Y9oetqwR3yXleOSlp7TAxqwJAaDJyx
	LFkSidPXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN7E-0006Pm-1G; Tue, 16 Jul 2019 13:03:32 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN7A-0006Ov-Ct
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:03:30 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.105])
 by regular1.263xmail.com (Postfix) with ESMTP id BB5A9713;
 Tue, 16 Jul 2019 21:03:23 +0800 (CST)
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
 P29430T139996755371776S1563282194169840_; 
 Tue, 16 Jul 2019 21:03:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1e9d5281895ebaf3d5cc4e30ec0cf445>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 13/57] ram: rk3399: Update cs0_row to use sys_reg3
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-14-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <dca410a7-8eb2-1185-f9ea-ed30b42e6c79@rock-chips.com>
Date: Tue, 16 Jul 2019 21:03:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-14-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060328_869381_995A858D 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IGNzMF9yb3cgY2Fu
IGhhbmRsZSB0aGUgcG11IHZpYSBzeXNfcmVnMiBhbmQgc3lzX3JlZzMgd2hpbGUKPiBjb25maWd1
cmluZyB0aGUgZHJhbSBpbnN0ZWFkIG9mIGp1c3Qgc3lzX3JlZzIuCj4KPiBTbywgdXBkYXRlIGNz
MF9yb3cgbWFjcm8gdG8gbWFrZSB1c2Ugb2YgYm90aCBzeXNfcmVnMiwKPiBzeXNfcmVnMy4KPgo+
IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdl
ZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKg
LSBLZXZlcgo+IC0tLQo+ICAgYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJh
bV9jb21tb24uaCB8IDggKysrKysrLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3Jr
MzM5OS5jICAgICAgICAgICAgICAgfCA0ICsrKy0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1
ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggYi9hcmNoL2FybS9pbmNsdWRlL2Fz
bS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gaW5kZXggNDc0OTIzMzIyNi4uZjc0Mzc3
MjI1YyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3Nk
cmFtX2NvbW1vbi5oCj4gKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9z
ZHJhbV9jb21tb24uaAo+IEBAIC05MCw4ICs5MCw2IEBAIHN0cnVjdCBzZHJhbV9iYXNlX3BhcmFt
cyB7Cj4gICAJCQkJCVNZU19SRUdfQktfU0hJRlQoY2gpKQo+ICAgI2RlZmluZSBTWVNfUkVHX0NT
MF9ST1dfU0hJRlQoY2gpCSg2ICsgKGNoKSAqIDE2KQo+ICAgI2RlZmluZSBTWVNfUkVHX0NTMF9S
T1dfTUFTSwkJMwo+IC0jZGVmaW5lIFNZU19SRUdfRU5DX0NTMF9ST1cobiwgY2gpCSgoKG4pIC0g
MTMpIDw8IFwKPiAtCQkJCQlTWVNfUkVHX0NTMF9ST1dfU0hJRlQoY2gpKQo+ICAgI2RlZmluZSBT
WVNfUkVHX0NTMV9ST1dfU0hJRlQoY2gpCSg0ICsgKGNoKSAqIDE2KQo+ICAgI2RlZmluZSBTWVNf
UkVHX0NTMV9ST1dfTUFTSwkJMwo+ICAgI2RlZmluZSBTWVNfUkVHX0VOQ19DUzFfUk9XKG4sIGNo
KQkoKChuKSAtIDEzKSA8PCBcCj4gQEAgLTEwMyw2ICsxMDEsMTIgQEAgc3RydWN0IHNkcmFtX2Jh
c2VfcGFyYW1zIHsKPiAgICNkZWZpbmUgU1lTX1JFR19EQldfTUFTSwkJMwo+ICAgI2RlZmluZSBT
WVNfUkVHX0VOQ19EQlcobiwgY2gpCQkoKDIgPj4gKG4pKSA8PCBTWVNfUkVHX0RCV19TSElGVChj
aCkpCj4gICAKPiArI2RlZmluZSBTWVNfUkVHX0VOQ19DUzBfUk9XKG4sIG9zX3JlZzIsIG9zX3Jl
ZzMsIGNoKSBkbyB7IFwKPiArCQkJKG9zX3JlZzIpIHw9ICgoKG4pIC0gMTMpICYgMHgzKSA8PCAo
NiArIDE2ICogKGNoKSk7IFwKPiArCQkJKG9zX3JlZzMpIHw9ICgoKChuKSAtIDEzKSAmIDB4NCkg
Pj4gMikgPDwgXAo+ICsJCQkJICAgICAoNSArIDIgKiAoY2gpKTsgXAo+ICsJCX0gd2hpbGUgKDAp
Cj4gKwo+ICAgLyogR2V0IHNkcmFtIHNpemUgZGVjb2RlIGZyb20gcmVnICovCj4gICBzaXplX3Qg
cm9ja2NoaXBfc2RyYW1fc2l6ZShwaHlzX2FkZHJfdCByZWcpOwo+ICAgCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2No
aXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCAyZWY5NjljMDdiLi43MDg2N2NiZDVmIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVy
cy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTA3NCw2ICsxMDc0LDcgQEAgc3Rh
dGljIHZvaWQgZHJhbV9hbGxfY29uZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJCQkg
ICAgY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAgIHsKPiAgIAl1
MzIgc3lzX3JlZzIgPSAwOwo+ICsJdTMyIHN5c19yZWczID0gMDsKPiAgIAl1bnNpZ25lZCBpbnQg
Y2hhbm5lbCwgaWR4Owo+ICAgCj4gICAJc3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfRERSVFlQRShw
YXJhbXMtPmJhc2UuZHJhbXR5cGUpOwo+IEBAIC0xMDk0LDEwICsxMDk1LDEwIEBAIHN0YXRpYyB2
b2lkIGRyYW1fYWxsX2NvbmZpZyhzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQlzeXNfcmVn
MiB8PSBTWVNfUkVHX0VOQ19SQU5LKGluZm8tPmNhcF9pbmZvLnJhbmssIGNoYW5uZWwpOwo+ICAg
CQlzeXNfcmVnMiB8PSBTWVNfUkVHX0VOQ19DT0woaW5mby0+Y2FwX2luZm8uY29sLCBjaGFubmVs
KTsKPiAgIAkJc3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfQksoaW5mby0+Y2FwX2luZm8uYmssIGNo
YW5uZWwpOwo+IC0JCXN5c19yZWcyIHw9IFNZU19SRUdfRU5DX0NTMF9ST1coaW5mby0+Y2FwX2lu
Zm8uY3MwX3JvdywgY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcyIHw9IFNZU19SRUdfRU5DX0NTMV9S
T1coaW5mby0+Y2FwX2luZm8uY3MxX3JvdywgY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcyIHw9IFNZ
U19SRUdfRU5DX0JXKGluZm8tPmNhcF9pbmZvLmJ3LCBjaGFubmVsKTsKPiAgIAkJc3lzX3JlZzIg
fD0gU1lTX1JFR19FTkNfREJXKGluZm8tPmNhcF9pbmZvLmRidywgY2hhbm5lbCk7Cj4gKwkJU1lT
X1JFR19FTkNfQ1MwX1JPVyhpbmZvLT5jYXBfaW5mby5jczBfcm93LCBzeXNfcmVnMiwgc3lzX3Jl
ZzMsIGNoYW5uZWwpOwo+ICAgCj4gICAJCWRkcl9tc2NoX3JlZ3MgPSBkcmFtLT5jaGFuW2NoYW5u
ZWxdLm1zY2g7Cj4gICAJCW5vY190aW1pbmcgPSAmcGFyYW1zLT5jaFtjaGFubmVsXS5ub2NfdGlt
aW5nczsKPiBAQCAtMTExOSw2ICsxMTIwLDcgQEAgc3RhdGljIHZvaWQgZHJhbV9hbGxfY29uZmln
KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJfQo+ICAgCj4gICAJd3JpdGVsKHN5c19yZWcy
LCAmZHJhbS0+cG11Z3JmLT5vc19yZWcyKTsKPiArCXdyaXRlbChzeXNfcmVnMywgJmRyYW0tPnBt
dWdyZi0+b3NfcmVnMyk7Cj4gICAJcmtfY2xyc2V0cmVnKCZkcmFtLT5wbXVzZ3JmLT5zb2NfY29u
NCwgMHgxZiA8PCAxMCwKPiAgIAkJICAgICBwYXJhbXMtPmJhc2Uuc3RyaWRlIDw8IDEwKTsKPiAg
IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
