Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E736A964
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xt4qC8YRlKfBOONvtB54xbEl9fwpPNeGejSVN7CrWQA=; b=hUAxf/Cos8TUwqZLjWNdSO/20
	ds4/RRog6NmN21EEBr6srvYft9OZ22dhTBFCLxnDExyZ3mw2o9I06idlWeRaqdPzIuzt8FgxRBdCE
	Hnz48zfeJuOSpI9CT/SNPHZNI6UTHtl0YOkdphVdmDbAo2ZO4Gd242Atwz9mkKVrjjZZQUo/vfdRZ
	9cEUXLTWz6hlhdcSEuAKUem17MgacK5tmkQr+aG5IHf5AKrfQGUrc7L51BL3OJOg0M0HQaf8j1ze5
	+gcZo1tHP3hyEq0IvAgUozlCLdb9iAEVyyJDAR1vM5fwX6PtoxFJxs500VKZ4YRWGY1+o7mfr9uBl
	ZqYr7k0yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNLA-00042E-DA; Tue, 16 Jul 2019 13:17:56 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNL6-00041T-Be
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:17:53 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id 4A6E31EB;
 Tue, 16 Jul 2019 21:17:50 +0800 (CST)
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
 P25752T140260390459136S1563283062865957_; 
 Tue, 16 Jul 2019 21:17:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <75a50abfcbf582ecad3d1280f6a3229c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 41/57] ram: rk3399: Simplify data training first
 argument
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-42-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ca5fd5e7-81bf-220d-49c6-bb3aa39d0a87@rock-chips.com>
Date: Tue, 16 Jul 2019 21:17:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-42-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061752_605642_DB704741 
X-CRM114-Status: GOOD (  15.20  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IGRhdGEgdHJhaW5p
bmcgaXMgdXNpbmcgY2hhbl9pbmZvIGFzIGZpcnN0IGFyZ3VtZW50IHdpdGgKPiBjaGFubmVsIG51
bWJlciBhcyBzZWNvbmQgYXJndW1lbnQgaW5zdGVhZCBvZiB0aGF0IHVzZQo+IGRyYW1faW5mbyBh
cyBmaXJzdCBhcmd1bWVudCBzby10aGF0IHdlIGNhbiBnZXQgdGhlCj4gY2hhbl9pbmZvIGF0IGRh
dGEgdHJhaW5pbmcgZGVmaW5pdGlvbi4KPgo+IFRoaXMgd2FzIHRoZSBhcmd1bWVudCBoYW5kbGlu
ZyBpcyBtZWFuaW5nZnVsLCByZWFkYWJsZQo+IGFuZCBpdCB3b3VsZCBoZWxwIHRvIGFkZCBzaW1p
bGFyIGRhdGEgdHJhaW5pbmcgZm9yCj4gbHBkZHI0IGluIGZ1dHVyZS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6
IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2
ZXIKPiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgOSArKysr
LS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9k
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IGUzZjFhYmY3ZTcuLjFh
YWFlYjViODggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5
LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0xMjg2
LDEwICsxMjg2LDExIEBAIHN0YXRpYyBpbnQgZGF0YV90cmFpbmluZ193ZHFsKGNvbnN0IHN0cnVj
dCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+ICAgCXJldHVybiAwOwo+ICAgfQo+ICAg
Cj4gLXN0YXRpYyBpbnQgZGF0YV90cmFpbmluZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFu
LCB1MzIgY2hhbm5lbCwKPiArc3RhdGljIGludCBkYXRhX3RyYWluaW5nKHN0cnVjdCBkcmFtX2lu
Zm8gKmRyYW0sIHUzMiBjaGFubmVsLAo+ICAgCQkJIGNvbnN0IHN0cnVjdCByazMzOTlfc2RyYW1f
cGFyYW1zICpwYXJhbXMsCj4gICAJCQkgdTMyIHRyYWluaW5nX2ZsYWcpCj4gICB7Cj4gKwlzdHJ1
Y3QgY2hhbl9pbmZvICpjaGFuID0gJmRyYW0tPmNoYW5bY2hhbm5lbF07Cj4gICAJdTMyICpkZW5h
bGlfcGh5ID0gY2hhbi0+cHVibC0+ZGVuYWxpX3BoeTsKPiAgIAlpbnQgcmV0Owo+ICAgCj4gQEAg
LTE0OTgsOCArMTQ5OSw3IEBAIHN0YXRpYyBpbnQgc3dpdGNoX3RvX3BoeV9pbmRleDEoc3RydWN0
IGRyYW1faW5mbyAqZHJhbSwKPiAgIAlmb3IgKGNoYW5uZWwgPSAwOyBjaGFubmVsIDwgY2hfY291
bnQ7IGNoYW5uZWwrKykgewo+ICAgCQlkZW5hbGlfcGh5ID0gZHJhbS0+Y2hhbltjaGFubmVsXS5w
dWJsLT5kZW5hbGlfcGh5Owo+ICAgCQljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbODk2XSwg
KDB4MyA8PCA4KSB8IDEsIDEgPDwgOCk7Cj4gLQkJcmV0ID0gZGF0YV90cmFpbmluZygmZHJhbS0+
Y2hhbltjaGFubmVsXSwgY2hhbm5lbCwKPiAtCQkJCSAgICBwYXJhbXMsIFBJX0ZVTExfVFJBSU5J
TkcpOwo+ICsJCXJldCA9IGRhdGFfdHJhaW5pbmcoZHJhbSwgY2hhbm5lbCwgcGFyYW1zLCBQSV9G
VUxMX1RSQUlOSU5HKTsKPiAgIAkJaWYgKHJldCA8IDApIHsKPiAgIAkJCWRlYnVnKCJpbmRleDEg
dHJhaW5pbmcgZmFpbGVkXG4iKTsKPiAgIAkJCXJldHVybiByZXQ7Cj4gQEAgLTE2NjIsOCArMTY2
Miw3IEBAIHN0YXRpYyBpbnQgc2RyYW1faW5pdChzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAg
CQkJaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpCj4gICAJCQkJdHJhaW5pbmdf
ZmxhZyB8PSBQSV9DQV9UUkFJTklORzsKPiAgIAo+IC0JCQlpZiAoIShkYXRhX3RyYWluaW5nKCZk
cmFtLT5jaGFuW2NoXSwgY2gsCj4gLQkJCQkJICAgIHBhcmFtcywgdHJhaW5pbmdfZmxhZykpKQo+
ICsJCQlpZiAoIShkYXRhX3RyYWluaW5nKGRyYW0sIGNoLCBwYXJhbXMsIHRyYWluaW5nX2ZsYWcp
KSkKPiAgIAkJCQlicmVhazsKPiAgIAkJfQo+ICAgCQkvKiBDb21wdXRlZCByYW5rIHdpdGggYXNz
b2NpYXRlZCBjaGFubmVsIG51bWJlciAqLwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
