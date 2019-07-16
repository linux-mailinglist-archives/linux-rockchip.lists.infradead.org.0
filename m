Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4616A325
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=np92fFiKs5NjmyPgvqGdc7oUoOw2wueQuvlH2Te30I8=; b=mF7p38dea9c0qUJVi/MyLnL5b
	bBNTftoYDMQ3AXYTFMErddLySTg2bawZy0rfqXhgiiljPF2K4SpoD14m87Q9/l4tO62d/J/0YzGkT
	xmFHeztGtmCyYhaC+FE9xuE4DRyhZSGY1n5EvzremTgu1T2FfEyQeDDn4RnBUEzzspxCNwYBiYVZu
	+WYAzYPNnHAueQUqGv/uoP+CnBs62kfAuj2F/nFw1Ekmo6cWkKRcmlg7jI6Rg5FcXahUqoylTNxea
	ODkIR/HzkGL7FKbs7QETaLO+qOChOtWaL7V71ERWqhoVgIKSzemyaabB/7FgzJme2eNiY2pebGWdi
	pbVf8G0Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI8P-0007CF-5j; Tue, 16 Jul 2019 07:44:25 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI8L-0007Bv-NP
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:44:23 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 20D403E7;
 Tue, 16 Jul 2019 15:44:20 +0800 (CST)
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
 P41746T139672375334656S1563263055698349_; 
 Tue, 16 Jul 2019 15:44:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <58297463308d2b38f687c9380975083f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 14/18] ram: rk3399: Compute stride for 2 channels
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-15-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9bd3ed0a-9e17-f50a-100a-858b2980a7ea@rock-chips.com>
Date: Tue, 16 Jul 2019 15:44:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-15-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004422_086168_8F94D635 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IHN0cmlkZSB2YWx1
ZSBmcm9tIHNkcmFtIHRpbWluZ3MgY2FuIGJlIGNvbXB1dGVkIGR5bmFtaWNhbGx5Cj4gYmFzZWQg
b24gdGhlIGRldGVybWluZWQgY2FwYWNpdHkgZm9yIHRoZSBnaXZlbiBjaGFubmVsLgo+Cj4gUmln
aHQgbm93IHRoZXNlIHN0cmlkZSB2YWx1ZXMgYXJlIHRha2VuIGFzIHBhcnQgb2Ygc2RyYW0gdGlt
aW5ncwo+IHZpYSBkdHNpLCBidXQgaXQgcG9zc2libGUgdG8gdXNlIHNhbWUgdGltaW5ncyBkdHNp
IGZvciBnaXZlbgo+IGZyZXF1ZW5jeSBldmVuIHRob3VnaCB0aGUgY29uZmlndXJlZCBib2FyZCBz
ZHJhbSBkbyBzdXBwb3J0Cj4gc2luZ2xlIGNoYW5uZWwgd2l0aCBkaWZmZXJlbnQgc2l6ZSBieSBk
eW5hbWljYWxseSBkZXRlY3QgdGhlCj4gc3RyaWRlIHZhbHVlLgo+Cj4gRXhhbXBsZSwgTmFub1Bp
IE5FTzQgZG8gaGF2ZSBERFIzLTE4NjYsIGJ1dCB3aXRoIHNpbmdsZSBjaGFubmVsCj4gYW5kIDFH
QiBzaXplIHdpdGggZHluYW1pYyBzdHJpZGUgZGV0ZWN0aW9uIGl0IGlzIHBvc3NpYmxlIHRvCj4g
dXNlIGV4aXN0aW5nIHJrMzM5OS1zZHJhbS1kZHIzLTE4NjYuZHRzaSB3aG9zZSBzdHJpZGUsCj4g
bnVtYmVyIG9mIGNoYW5uZWxzIGFuZCBjYXBhY2l0eSBpdCBzdXBwb3J0IGlzIGQgZWZmZXJlbnQu
Cj4KPiBTbywgYWRkIGluaXRpYWwgc3VwcG9ydCB0byBjYWxjdWxhdGUgdGhlIHN0cmlkZSB2YWx1
ZSBmb3IKPiAyIGNoYW5uZWxzIHNkcmFtLCB3aGljaCBpcyBhdmFpbGFibGUgYnkgZGVmYXVsdCBv
biBleGlzdGluZwo+IGJvYXJkcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2Fu
QGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1A
cm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2Nr
LWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9j
a2NoaXAvc2RyYW1fcmszMzk5LmMgfCA3MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMv
cmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggMDg0Yzk0OTcyOC4uYzYyNmVmNjAy
YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsr
KyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTExODMsOCArMTE4
Myw3NSBAQCBzdGF0aWMgaW50IHN3aXRjaF90b19waHlfaW5kZXgxKHN0cnVjdCBkcmFtX2luZm8g
KmRyYW0sCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiArc3RhdGljIHVuc2lnbmVkIGNoYXIg
Y2FsY3VsYXRlX3N0cmlkZShzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1zKQo+ICt7
Cj4gKwl1bnNpZ25lZCBpbnQgc3RyaWRlID0gcGFyYW1zLT5iYXNlLnN0cmlkZTsKPiArCXVuc2ln
bmVkIGludCBjaGFubmVsLCBjaGluZm8gPSAwOwo+ICsJdW5zaWduZWQgaW50IGNoX2NhcFsyXSA9
IHswLCAwfTsKPiArCXU2NCBjYXA7Cj4gKwo+ICsJZm9yIChjaGFubmVsID0gMDsgY2hhbm5lbCA8
IDI7IGNoYW5uZWwrKykgewo+ICsJCXVuc2lnbmVkIGludCBjczBfY2FwID0gMDsKPiArCQl1bnNp
Z25lZCBpbnQgY3MxX2NhcCA9IDA7Cj4gKwkJc3RydWN0IHNkcmFtX2NhcF9pbmZvICpjYXBfaW5m
byA9ICZwYXJhbXMtPmNoW2NoYW5uZWxdLmNhcF9pbmZvOwo+ICsKPiArCQlpZiAoY2FwX2luZm8t
PmNvbCA9PSAwKQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJY3MwX2NhcCA9ICgxIDw8IChjYXBf
aW5mby0+Y3MwX3JvdyArIGNhcF9pbmZvLT5jb2wgKwo+ICsJCQkJIGNhcF9pbmZvLT5iayArIGNh
cF9pbmZvLT5idyAtIDIwKSk7Cj4gKwkJaWYgKGNhcF9pbmZvLT5yYW5rID4gMSkKPiArCQkJY3Mx
X2NhcCA9IGNzMF9jYXAgPj4gKGNhcF9pbmZvLT5jczBfcm93Cj4gKwkJCQkJICAgICAgLSBjYXBf
aW5mby0+Y3MxX3Jvdyk7Cj4gKwkJaWYgKGNhcF9pbmZvLT5yb3dfM180KSB7Cj4gKwkJCWNzMF9j
YXAgPSBjczBfY2FwICogMyAvIDQ7Cj4gKwkJCWNzMV9jYXAgPSBjczFfY2FwICogMyAvIDQ7Cj4g
KwkJfQo+ICsJCWNoX2NhcFtjaGFubmVsXSA9IGNzMF9jYXAgKyBjczFfY2FwOwo+ICsJCWNoaW5m
byB8PSAxIDw8IGNoYW5uZWw7Cj4gKwl9Cj4gKwo+ICsJLyogc3RyaWRlIGNhbGN1bGF0aW9uIGZv
ciAyIGNoYW5uZWxzLCBkZWZhdWx0IGdzdHJpZGUgdHlwZSBpcyAyNTZCICovCj4gKwlpZiAoY2hf
Y2FwWzBdID09IGNoX2NhcFsxXSkgewo+ICsJCWNhcCA9IGNoX2NhcFswXSArIGNoX2NhcFsxXTsK
PiArCQlzd2l0Y2ggKGNhcCkgewo+ICsJCS8qIDUxMk1CICovCj4gKwkJY2FzZSA1MTI6Cj4gKwkJ
CXN0cmlkZSA9IDA7Cj4gKwkJCWJyZWFrOwo+ICsJCS8qIDFHQiAqLwo+ICsJCWNhc2UgMTAyNDoK
PiArCQkJc3RyaWRlID0gMHg1Owo+ICsJCQlicmVhazsKPiArCQkvKgo+ICsJCSAqIDc2OE1CICsg
NzY4TUIgc2FtZSBhcyB0b3RhbCAyR0IgbWVtb3J5Cj4gKwkJICogdXNlZnVsIHNwYWNlOiAwLTc2
OE1CIDFHQi0xNzkyTUIKPiArCQkgKi8KPiArCQljYXNlIDE1MzY6Cj4gKwkJLyogMkdCICovCj4g
KwkJY2FzZSAyMDQ4Ogo+ICsJCQlzdHJpZGUgPSAweDk7Cj4gKwkJCWJyZWFrOwo+ICsJCS8qIDE1
MzZNQiArIDE1MzZNQiAqLwo+ICsJCWNhc2UgMzA3MjoKPiArCQkJc3RyaWRlID0gMHgxMTsKPiAr
CQkJYnJlYWs7Cj4gKwkJLyogNEdCICovCj4gKwkJY2FzZSA0MDk2Ogo+ICsJCQlzdHJpZGUgPSAw
eEQ7Cj4gKwkJCWJyZWFrOwo+ICsJCWRlZmF1bHQ6Cj4gKwkJCXByaW50ZigiJXM6IFVuYWJsZSB0
byBjYWxjdWxhdGUgc3RyaWRlIGZvciAiLCBfX2Z1bmNfXyk7Cj4gKwkJCXByaW50X3NpemUoKGNh
cCAqICgxIDw8IDIwKSksICIgY2FwYWNpdHlcbiIpOwo+ICsJCQlicmVhazsKPiArCQl9Cj4gKwl9
Cj4gKwo+ICsJcmV0dXJuIHN0cmlkZTsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQgc2RyYW1faW5p
dChzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+IC0JCSAgICAgIGNvbnN0IHN0cnVjdCByazMzOTlf
c2RyYW1fcGFyYW1zICpwYXJhbXMpCj4gKwkJICAgICAgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJh
bXMgKnBhcmFtcykKPiAgIHsKPiAgIAl1bnNpZ25lZCBjaGFyIGRyYW10eXBlID0gcGFyYW1zLT5i
YXNlLmRyYW10eXBlOwo+ICAgCXVuc2lnbmVkIGludCBkZHJfZnJlcSA9IHBhcmFtcy0+YmFzZS5k
ZHJfZnJlcTsKPiBAQCAtMTIzMiw2ICsxMjk5LDggQEAgc3RhdGljIGludCBzZHJhbV9pbml0KHN0
cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJCXNldF9kZHJjb25maWcoY2hhbiwgcGFyYW1zLCBj
aGFubmVsLAo+ICAgCQkJICAgICAgcGFyYW1zLT5jaFtjaGFubmVsXS5jYXBfaW5mby5kZHJjb25m
aWcpOwo+ICAgCX0KPiArCj4gKwlwYXJhbXMtPmJhc2Uuc3RyaWRlID0gY2FsY3VsYXRlX3N0cmlk
ZShwYXJhbXMpOwo+ICAgCWRyYW1fYWxsX2NvbmZpZyhkcmFtLCBwYXJhbXMpOwo+ICAgCXN3aXRj
aF90b19waHlfaW5kZXgxKGRyYW0sIHBhcmFtcyk7Cj4gICAKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
