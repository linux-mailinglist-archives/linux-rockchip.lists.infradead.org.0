Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C462F6A918
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TzqIVBqoLD/qk4cECjs+VRixUWjvRSY+vG0wAC/b1zU=; b=k4D0+5XAIIC7CHomiAK5j3apM
	+5eIMT0eLEGB7QcHOEMHRbrLR2vQyFTpTuAZ4IygYzX/7XErpywb/4xFcerjKt3Rkgeuc5hnZhLUr
	NiAyTK17+7R8+9FttAkdWv2rHPsHIzA3AVSf+Qzn+PNr28uhMRcKU18sirdtb7TqcOiyb1GsfMGG7
	FCW6bTdCzUxfaHjyIo1ibvFznfVn7u7ntVIYsJ9hoff5Idrs4dIuE1d8pNHaRpYO2kGV6FTSgTPvv
	rpl2Gxx1sJeNOYjBgMOZALO5G79C1a8PkcsqcurBhFyFjWbSSp00RxrYCxTC3bouG1/Ov0qXJVb8J
	NV0c8jb8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN7L-0006Sa-27; Tue, 16 Jul 2019 13:03:39 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN7I-0006RN-21
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:03:37 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id D41EC252;
 Tue, 16 Jul 2019 21:03:33 +0800 (CST)
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
 P8795T139711236749056S1563282203591391_; 
 Tue, 16 Jul 2019 21:03:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cb3af840b01d894dce3b99858a621d0c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 12/57] ram: rk3399: Rename sys_reg with sys_reg2
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-13-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4006c069-e8ab-69e1-8927-f11241d6e33c@rock-chips.com>
Date: Tue, 16 Jul 2019 21:03:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-13-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060336_541175_D5021C34 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFVzZSBkcmFtIGNv
bmZpZyB2YXJpYWJsZSBuYW1lIGFzIHN5c19yZWcyIGluc3RlYWQgb2Ygc3lzX3JlZwo+IHNpbmNl
IHRoZSBmaW5hbCB2YXJpYWJsZSB2YWx1ZSBpcyB0byB3cml0dGVuIGludG8gYSBwbXVncmYKPiBy
ZWdpc3RlciBuYW1lZCBhcyBzeXNfcmVnMi4KPgo+IFRoaXMgcmVmbGVjdCB0aGUgYm90aCB2YXJp
YWJsZSBhbmQgYXNzb2NpYXRlZCByZWdpc3Rlcgo+IG5hbWVzIGFyZSBzYW1lIGFuZCBhbHNvIGhl
bHAgdG8gYWRkIG5leHQgc3lzX3JlZydzIHRvCj4gYWRkIGl0IGluIGZ1dHVyZS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZl
cgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAyNiArKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMo
KyksIDEzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlw
L3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBp
bmRleCAyZDNmMGY2OTAyLi4yZWY5NjljMDdiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3Jv
Y2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1f
cmszMzk5LmMKPiBAQCAtMTA3MywxMSArMTA3MywxMSBAQCBzdGF0aWMgdm9pZCBzZXRfZGRyY29u
ZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICBzdGF0aWMgdm9pZCBkcmFtX2Fs
bF9jb25maWcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAgIAkJCSAgICBjb25zdCBzdHJ1Y3Qg
cmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1zKQo+ICAgewo+IC0JdTMyIHN5c19yZWcgPSAwOwo+
ICsJdTMyIHN5c19yZWcyID0gMDsKPiAgIAl1bnNpZ25lZCBpbnQgY2hhbm5lbCwgaWR4Owo+ICAg
Cj4gLQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX0REUlRZUEUocGFyYW1zLT5iYXNlLmRyYW10eXBl
KTsKPiAtCXN5c19yZWcgfD0gU1lTX1JFR19FTkNfTlVNX0NIKHBhcmFtcy0+YmFzZS5udW1fY2hh
bm5lbHMpOwo+ICsJc3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfRERSVFlQRShwYXJhbXMtPmJhc2Uu
ZHJhbXR5cGUpOwo+ICsJc3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfTlVNX0NIKHBhcmFtcy0+YmFz
ZS5udW1fY2hhbm5lbHMpOwo+ICAgCj4gICAJZm9yIChjaGFubmVsID0gMCwgaWR4ID0gMDsKPiAg
IAkgICAgIChpZHggPCBwYXJhbXMtPmJhc2UubnVtX2NoYW5uZWxzKSAmJiAoY2hhbm5lbCA8IDIp
Owo+IEBAIC0xMDg5LDE1ICsxMDg5LDE1IEBAIHN0YXRpYyB2b2lkIGRyYW1fYWxsX2NvbmZpZyhz
dHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQlpZiAocGFyYW1zLT5jaFtjaGFubmVsXS5jYXBf
aW5mby5jb2wgPT0gMCkKPiAgIAkJCWNvbnRpbnVlOwo+ICAgCQlpZHgrKzsKPiAtCQlzeXNfcmVn
IHw9IFNZU19SRUdfRU5DX1JPV18zXzQoaW5mby0+Y2FwX2luZm8ucm93XzNfNCwgY2hhbm5lbCk7
Cj4gLQkJc3lzX3JlZyB8PSBTWVNfUkVHX0VOQ19DSElORk8oY2hhbm5lbCk7Cj4gLQkJc3lzX3Jl
ZyB8PSBTWVNfUkVHX0VOQ19SQU5LKGluZm8tPmNhcF9pbmZvLnJhbmssIGNoYW5uZWwpOwo+IC0J
CXN5c19yZWcgfD0gU1lTX1JFR19FTkNfQ09MKGluZm8tPmNhcF9pbmZvLmNvbCwgY2hhbm5lbCk7
Cj4gLQkJc3lzX3JlZyB8PSBTWVNfUkVHX0VOQ19CSyhpbmZvLT5jYXBfaW5mby5iaywgY2hhbm5l
bCk7Cj4gLQkJc3lzX3JlZyB8PSBTWVNfUkVHX0VOQ19DUzBfUk9XKGluZm8tPmNhcF9pbmZvLmNz
MF9yb3csIGNoYW5uZWwpOwo+IC0JCXN5c19yZWcgfD0gU1lTX1JFR19FTkNfQ1MxX1JPVyhpbmZv
LT5jYXBfaW5mby5jczFfcm93LCBjaGFubmVsKTsKPiAtCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5D
X0JXKGluZm8tPmNhcF9pbmZvLmJ3LCBjaGFubmVsKTsKPiAtCQlzeXNfcmVnIHw9IFNZU19SRUdf
RU5DX0RCVyhpbmZvLT5jYXBfaW5mby5kYncsIGNoYW5uZWwpOwo+ICsJCXN5c19yZWcyIHw9IFNZ
U19SRUdfRU5DX1JPV18zXzQoaW5mby0+Y2FwX2luZm8ucm93XzNfNCwgY2hhbm5lbCk7Cj4gKwkJ
c3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfQ0hJTkZPKGNoYW5uZWwpOwo+ICsJCXN5c19yZWcyIHw9
IFNZU19SRUdfRU5DX1JBTksoaW5mby0+Y2FwX2luZm8ucmFuaywgY2hhbm5lbCk7Cj4gKwkJc3lz
X3JlZzIgfD0gU1lTX1JFR19FTkNfQ09MKGluZm8tPmNhcF9pbmZvLmNvbCwgY2hhbm5lbCk7Cj4g
KwkJc3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfQksoaW5mby0+Y2FwX2luZm8uYmssIGNoYW5uZWwp
Owo+ICsJCXN5c19yZWcyIHw9IFNZU19SRUdfRU5DX0NTMF9ST1coaW5mby0+Y2FwX2luZm8uY3Mw
X3JvdywgY2hhbm5lbCk7Cj4gKwkJc3lzX3JlZzIgfD0gU1lTX1JFR19FTkNfQ1MxX1JPVyhpbmZv
LT5jYXBfaW5mby5jczFfcm93LCBjaGFubmVsKTsKPiArCQlzeXNfcmVnMiB8PSBTWVNfUkVHX0VO
Q19CVyhpbmZvLT5jYXBfaW5mby5idywgY2hhbm5lbCk7Cj4gKwkJc3lzX3JlZzIgfD0gU1lTX1JF
R19FTkNfREJXKGluZm8tPmNhcF9pbmZvLmRidywgY2hhbm5lbCk7Cj4gICAKPiAgIAkJZGRyX21z
Y2hfcmVncyA9IGRyYW0tPmNoYW5bY2hhbm5lbF0ubXNjaDsKPiAgIAkJbm9jX3RpbWluZyA9ICZw
YXJhbXMtPmNoW2NoYW5uZWxdLm5vY190aW1pbmdzOwo+IEBAIC0xMTE4LDcgKzExMTgsNyBAQCBz
dGF0aWMgdm9pZCBkcmFtX2FsbF9jb25maWcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAgIAkJ
CQkgICAgIDEgPDwgMTcpOwo+ICAgCX0KPiAgIAo+IC0Jd3JpdGVsKHN5c19yZWcsICZkcmFtLT5w
bXVncmYtPm9zX3JlZzIpOwo+ICsJd3JpdGVsKHN5c19yZWcyLCAmZHJhbS0+cG11Z3JmLT5vc19y
ZWcyKTsKPiAgIAlya19jbHJzZXRyZWcoJmRyYW0tPnBtdXNncmYtPnNvY19jb240LCAweDFmIDw8
IDEwLAo+ICAgCQkgICAgIHBhcmFtcy0+YmFzZS5zdHJpZGUgPDwgMTApOwo+ICAgCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
