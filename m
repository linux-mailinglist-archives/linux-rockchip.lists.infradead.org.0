Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A816A315
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aE9YM23hM2hXhEPEgoMtKQdgXZIuodnYN8VhNj66KZ8=; b=JgS/tHwnP/60plCtMdM/08eNr
	NhYBDxPytIqqJcko9LolooOxqFICE1+zFKGfRP34QOHJYeN6KS6cQvUtU5W6Ap0W/TkKKcVfn2TP6
	KxvOFR67WGS2aaZ7hbMCSRCcT38ycs2YAforv2tSR6lbSj2+JtjV5ovbN+wvXgCZ5OjAICw5c4n5z
	qoxqN1T2ojxpbweDBwMjBKp5xY8hd4yq3XITWwtbUMXKydckfJPXIbkdyXV8kYqbtfpQlLKK5LTm7
	nlMIrR0noi89t4XZootYul93dVgo6Z3+mu1qkrCD0+IrrVdxLGD4b1bSA+TxIPt3CxeuFDP05xFFI
	6bsV6Bfig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI3c-0005Iv-1i; Tue, 16 Jul 2019 07:39:28 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI3Y-0005II-7u
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:39:25 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.174])
 by regular1.263xmail.com (Postfix) with ESMTP id 59E7E2A8;
 Tue, 16 Jul 2019 15:39:21 +0800 (CST)
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
 P3349T139990019335936S1563262757983336_; 
 Tue, 16 Jul 2019 15:39:19 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <457c9e934bdcf41d8b315ef5655ee24a>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 05/18] ram: rk3399: Add phy pctrl reset support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <064d9b4f-8263-1182-a3e4-eda7b5421109@rock-chips.com>
Date: Tue, 16 Jul 2019 15:39:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003924_673330_FFA87E2C 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzdXBwb3J0
IGZvciBwaHkgcGN0cmwgcmVzZXQgc3VwcG9ydCBmb3IgYm90aCBjaGFubmVsIDAsIDEuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQt
Ynk6IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0g
S2V2ZXIKPiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgMjkg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNl
cnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmsz
Mzk5LmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDE2YmQ5
NDI3YTYuLmE1ZGE5ODVlMWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2Ry
YW1fcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+
IEBAIC0zNSw2ICszNSwxMCBAQAo+ICAgI2RlZmluZSBQSFlfRFJWX09EVF80MAkJMHhlCj4gICAj
ZGVmaW5lIFBIWV9EUlZfT0RUXzM0XzMJMHhmCj4gICAKPiArI2RlZmluZSBDUlVfU0ZUUlNUX0RE
Ul9DVFJMKGNoLCBuKQkoKDB4MSA8PCAoOCArIDE2ICsgKGNoKSAqIDQpKSB8IFwKPiArCQkJCQko
KG4pIDw8ICg4ICsgKGNoKSAqIDQpKSkKPiArI2RlZmluZSBDUlVfU0ZUUlNUX0REUl9QSFkoY2gs
IG4pCSgoMHgxIDw8ICg5ICsgMTYgKyAoY2gpICogNCkpIHwgXAo+ICsJCQkJCSgobikgPDwgKDkg
KyAoY2gpICogNCkpKQo+ICAgc3RydWN0IGNoYW5faW5mbyB7Cj4gICAJc3RydWN0IHJrMzM5OV9k
ZHJfcGN0bF9yZWdzICpwY3RsOwo+ICAgCXN0cnVjdCByazMzOTlfZGRyX3BpX3JlZ3MgKnBpOwo+
IEBAIC03OSw2ICs4MywyOSBAQCBzdGF0aWMgdm9pZCBjb3B5X3RvX3JlZyh1MzIgKmRlc3QsIGNv
bnN0IHUzMiAqc3JjLCB1MzIgbikKPiAgIAl9Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQgcmtj
bGtfZGRyX3Jlc2V0KHN0cnVjdCByazMzOTlfY3J1ICpjcnUsIHUzMiBjaGFubmVsLCB1MzIgY3Rs
LAo+ICsJCQkgICAgdTMyIHBoeSkKPiArewo+ICsJY2hhbm5lbCAmPSAweDE7Cj4gKwljdGwgJj0g
MHgxOwo+ICsJcGh5ICY9IDB4MTsKPiArCXdyaXRlbChDUlVfU0ZUUlNUX0REUl9DVFJMKGNoYW5u
ZWwsIGN0bCkgfAo+ICsJCQkJICAgQ1JVX1NGVFJTVF9ERFJfUEhZKGNoYW5uZWwsIHBoeSksCj4g
KwkJCQkgICAmY3J1LT5zb2Z0cnN0X2Nvbls0XSk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHBo
eV9wY3RybF9yZXNldChzdHJ1Y3QgcmszMzk5X2NydSAqY3J1LCAgdTMyIGNoYW5uZWwpCj4gK3sK
PiArCXJrY2xrX2Rkcl9yZXNldChjcnUsIGNoYW5uZWwsIDEsIDEpOwo+ICsJdWRlbGF5KDEwKTsK
PiArCj4gKwlya2Nsa19kZHJfcmVzZXQoY3J1LCBjaGFubmVsLCAxLCAwKTsKPiArCXVkZWxheSgx
MCk7Cj4gKwo+ICsJcmtjbGtfZGRyX3Jlc2V0KGNydSwgY2hhbm5lbCwgMCwgMCk7Cj4gKwl1ZGVs
YXkoMTApOwo+ICt9Cj4gKwo+ICAgc3RhdGljIHZvaWQgcGh5X2RsbF9ieXBhc3Nfc2V0KHN0cnVj
dCByazMzOTlfZGRyX3B1YmxfcmVncyAqZGRyX3B1YmxfcmVncywKPiAgIAkJCSAgICAgICB1MzIg
ZnJlcSkKPiAgIHsKPiBAQCAtMTEyOSw2ICsxMTU2LDcgQEAgc3RhdGljIGludCBzZHJhbV9pbml0
KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICB7Cj4gICAJdW5zaWduZWQgY2hhciBkcmFtdHlw
ZSA9IHBhcmFtcy0+YmFzZS5kcmFtdHlwZTsKPiAgIAl1bnNpZ25lZCBpbnQgZGRyX2ZyZXEgPSBw
YXJhbXMtPmJhc2UuZGRyX2ZyZXE7Cj4gKwlzdHJ1Y3QgcmszMzk5X2NydSAqY3J1ID0gZHJhbS0+
Y3J1Owo+ICAgCWludCBjaGFubmVsOwo+ICAgCWludCByZXQ7Cj4gICAKPiBAQCAtMTE0NSw2ICsx
MTczLDcgQEAgc3RhdGljIGludCBzZHJhbV9pbml0KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4g
ICAJCWNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4gPSAmZHJhbS0+Y2hhbltjaGFubmVsXTsK
PiAgIAkJc3RydWN0IHJrMzM5OV9kZHJfcHVibF9yZWdzICpwdWJsID0gY2hhbi0+cHVibDsKPiAg
IAo+ICsJCXBoeV9wY3RybF9yZXNldChjcnUsIGNoYW5uZWwpOwo+ICAgCQlwaHlfZGxsX2J5cGFz
c19zZXQocHVibCwgZGRyX2ZyZXEpOwo+ICAgCj4gICAJCWlmIChjaGFubmVsID49IHBhcmFtcy0+
YmFzZS5udW1fY2hhbm5lbHMpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
