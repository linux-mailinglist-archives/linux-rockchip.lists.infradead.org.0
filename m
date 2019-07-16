Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0726D6A32D
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A8wlB+5etVmR9OUvWhkUNl21DFk9daLnouR3MrkS828=; b=N+t+SeZWfLTYWRJ21ctgQdwwE
	xVsXIHgS+ncqEGcxm59hCpbEJRg9zUIm0QD0RrLd1xAsbfYgyxsGGuWZkqer1k4mqMrhqGNjpmhg5
	KUqoJBNgriaNrBUzpCCSnip4kspi5qkQyPDjKa1JdXDS9TGjdr1kowo4EbB38nsSe8MMetit9y9hQ
	+x9U9T0RJ1FfWa3OQYaqt9dCj6nc7JTHypiF0tjiqWw115rmb/uUmVE82q9R2HuQfCPp22IVJWUT6
	394LQ9V6Wr9wCSokKDJLP8g8iTUreLc8Uk+Hk8lArJAuWyfojxXnQnxSyPUMQkrwZyxI61M6rTK5O
	6bJPkAgsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI9Q-0000m1-Ih; Tue, 16 Jul 2019 07:45:28 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI9J-0000fh-Jm
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:45:23 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id DAB109E2;
 Tue, 16 Jul 2019 15:45:19 +0800 (CST)
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
 P21246T140496624150272S1563263116760124_; 
 Tue, 16 Jul 2019 15:45:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e4df487f31242cc67b7c8dd54529ee25>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 16/18] ram: rk3399: Add rank detection support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-17-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <a0a169c8-412a-0368-4cac-831dc71426a5@rock-chips.com>
Date: Tue, 16 Jul 2019 15:45:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-17-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004522_057844_8E24B367 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFJpZ2h0IG5vdyB0
aGUgcmszMzk5IHNkcmFtIGRyaXZlciBhc3N1bWUgdGhhdCB0aGUgYm9hcmQKPiBoYXMgY29uZmln
dXJlZCB3aXRoIDIgY2hhbm5lbHMsIHNvIGFueSBwb3NzaWJpbGl0eSB0bwo+IGVuYWJsZSBzaW5n
bGUgY2hhbm5lbCBvbiB0aGUgc2FtZSBkcml2ZXIgd2lsbCBlbmNvdW50ZXIKPiBjaGFubmVsICMx
IGRhdGEgdHJhaW5pbmcgZmFpbHVyZS4KPgo+IExvZzoKPiBVLUJvb3QgVFBMIGJvYXJkIGluaXQK
PiBzZHJhbV9pbml0OiBkYXRhIHRyYWluaW5nIGZhaWxlZAo+IHJrMzM5OV9kbWNfaW5pdCBEUkFN
IGluaXQgZmFpbGVkIC01Cj4KPiBTbywgYWRkIGFuIGFsZ29yaXRobSB0aGF0IGNhbiBjYXBhYmxl
IHRvIGNvbXB1dGUgdGhlIGFjdGl2ZQo+IG9yIGNvbmZpZ3VyZWQgcmFuayB3aXRoIGFzc29jaWF0
ZWQgY2hhbm5lbCBsaWtlCj4gYSkgZG8gcmFuayBsb29wIHRvIGNvbXB1dGUgdGhlIGFjdGl2ZSBy
YW5rLCB3aXRoIGFzc29jaWF0ZWQKPiAgICAgY2hhbm5lbCBudW1iZXJzCj4gYikgdGhlbiwgc3Vj
Y2VlZCB0aGUgZGF0YSB0cmFpbmluZyBvbmx5IGZvciBjb25maWd1cmVkIGNoYW5uZWwKPiBjKSBw
cmVzZXJ2ZSB0aGUgcmFuayBmb3IgZ2l2ZW4gY2hhbm5lbAo+IGQpIGRvIGNoYW5uZWwgbG9vcCBm
b3Igc2V0dGluZyB0aGUgYWN0aXZlIGNoYW5uZWwKPiBlKSBpZiBnaXZlbiByYW5rIGlzIHplcm8g
b3IgaW5hY3RpdmUgb24gdGhlIHNwZWNpZmljIGNoYW5uZWwsCj4gICAgIGNsZWFyIHRoZSB0aW1p
bmdzIGZvciB0aGUgYXNzb2NpYXRlZCBjaGFubmVsCj4gZikgZmluYWxseSwgcmV0dXJuIGVycm9y
IGlmIG51bWJlciBvZiBjaGFubmVscyBpcyB6ZXJvCj4KPiBUZXN0ZWQgaW4gTmFub1BJLU5FTzQg
c2luY2UgaXQgc3VwcG9ydCBzaW5nbGUgY2hhbm5lbCBzZHJhbQo+IGNvbmZpZ3VyYXRpb24uCj4K
PiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3
ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDC
oC0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwg
MTEwICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4NiBp
bnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Jh
bS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3Jr
MzM5OS5jCj4gaW5kZXggOGJiYWNiNTI3NS4uYjgzOTU1Zjk0ZSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTEyNTQsMTMgKzEyNTQsNTIgQEAgc3RhdGljIHVuc2ln
bmVkIGNoYXIgY2FsY3VsYXRlX3N0cmlkZShzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFy
YW1zKQo+ICAgCXJldHVybiBzdHJpZGU7Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQgY2xlYXJf
Y2hhbm5lbF9wYXJhbXMoc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcywgdTggY2hh
bm5lbCkKPiArewo+ICsJcGFyYW1zLT5jaFtjaGFubmVsXS5jYXBfaW5mby5yYW5rID0gMDsKPiAr
CXBhcmFtcy0+Y2hbY2hhbm5lbF0uY2FwX2luZm8uY29sID0gMDsKPiArCXBhcmFtcy0+Y2hbY2hh
bm5lbF0uY2FwX2luZm8uYmsgPSAwOwo+ICsJcGFyYW1zLT5jaFtjaGFubmVsXS5jYXBfaW5mby5i
dyA9IDMyOwo+ICsJcGFyYW1zLT5jaFtjaGFubmVsXS5jYXBfaW5mby5kYncgPSAzMjsKPiArCXBh
cmFtcy0+Y2hbY2hhbm5lbF0uY2FwX2luZm8ucm93XzNfNCA9IDA7Cj4gKwlwYXJhbXMtPmNoW2No
YW5uZWxdLmNhcF9pbmZvLmNzMF9yb3cgPSAwOwo+ICsJcGFyYW1zLT5jaFtjaGFubmVsXS5jYXBf
aW5mby5jczFfcm93ID0gMDsKPiArCXBhcmFtcy0+Y2hbY2hhbm5lbF0uY2FwX2luZm8uZGRyY29u
ZmlnID0gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBwY3RsX2luaXQoc3RydWN0IGRyYW1faW5m
byAqZHJhbSwgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiArewo+ICsJaW50
IGNoYW5uZWw7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCWZvciAoY2hhbm5lbCA9IDA7IGNoYW5uZWwg
PCAyOyBjaGFubmVsKyspIHsKPiArCQljb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuID0gJmRy
YW0tPmNoYW5bY2hhbm5lbF07Cj4gKwkJc3RydWN0IHJrMzM5OV9jcnUgKmNydSA9IGRyYW0tPmNy
dTsKPiArCQlzdHJ1Y3QgcmszMzk5X2Rkcl9wdWJsX3JlZ3MgKnB1YmwgPSBjaGFuLT5wdWJsOwo+
ICsKPiArCQlwaHlfcGN0cmxfcmVzZXQoY3J1LCBjaGFubmVsKTsKPiArCQlwaHlfZGxsX2J5cGFz
c19zZXQocHVibCwgcGFyYW1zLT5iYXNlLmRkcl9mcmVxKTsKPiArCj4gKwkJcmV0ID0gcGN0bF9j
ZmcoZHJhbSwgY2hhbiwgY2hhbm5lbCwgcGFyYW1zKTsKPiArCQlpZiAocmV0IDwgMCkgewo+ICsJ
CQlwcmludGYoIiVzOiBwY3RsIGNvbmZpZyBmYWlsZWRcbiIsIF9fZnVuY19fKTsKPiArCQkJcmV0
dXJuIHJldDsKPiArCQl9Cj4gKwo+ICsJCS8qIHN0YXJ0IHRvIHRyaWdnZXIgaW5pdGlhbGl6YXRp
b24gKi8KPiArCQlwY3RsX3N0YXJ0KGRyYW0sIGNoYW5uZWwpOwo+ICsJfQo+ICsKPiArCXJldHVy
biAwOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGludCBzZHJhbV9pbml0KHN0cnVjdCBkcmFtX2luZm8g
KmRyYW0sCj4gICAJCSAgICAgIHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1zICpwYXJhbXMpCj4g
ICB7Cj4gICAJdW5zaWduZWQgY2hhciBkcmFtdHlwZSA9IHBhcmFtcy0+YmFzZS5kcmFtdHlwZTsK
PiAgIAl1bnNpZ25lZCBpbnQgZGRyX2ZyZXEgPSBwYXJhbXMtPmJhc2UuZGRyX2ZyZXE7Cj4gLQlz
dHJ1Y3QgcmszMzk5X2NydSAqY3J1ID0gZHJhbS0+Y3J1Owo+IC0JaW50IGNoYW5uZWw7Cj4gKwl1
MzIgdHJhaW5pbmdfZmxhZyA9IFBJX1JFQURfR0FURV9UUkFJTklORzsKPiArCWludCBjaGFubmVs
LCBjaCwgcmFuazsKPiAgIAlpbnQgcmV0Owo+ICAgCj4gICAJZGVidWcoIlN0YXJ0aW5nIFNEUkFN
IGluaXRpYWxpemF0aW9uLi4uXG4iKTsKPiBAQCAtMTI3MiwzNiArMTMxMSw1OSBAQCBzdGF0aWMg
aW50IHNkcmFtX2luaXQoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAgIAkJcmV0dXJuIC1FMkJJ
RzsKPiAgIAl9Cj4gICAKPiAtCWZvciAoY2hhbm5lbCA9IDA7IGNoYW5uZWwgPCAyOyBjaGFubmVs
KyspIHsKPiAtCQljb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuID0gJmRyYW0tPmNoYW5bY2hh
bm5lbF07Cj4gLQkJc3RydWN0IHJrMzM5OV9kZHJfcHVibF9yZWdzICpwdWJsID0gY2hhbi0+cHVi
bDsKPiArCWZvciAoY2ggPSAwOyBjaCA8IDI7IGNoKyspIHsKPiArCQlwYXJhbXMtPmNoW2NoXS5j
YXBfaW5mby5yYW5rID0gMjsKPiArCQlmb3IgKHJhbmsgPSAyOyByYW5rICE9IDA7IHJhbmstLSkg
ewo+ICsJCQlyZXQgPSBwY3RsX2luaXQoZHJhbSwgcGFyYW1zKTsKPiArCQkJaWYgKHJldCA8IDAp
IHsKPiArCQkJCXByaW50ZigiJXM6IHBjdGwgaW5pdCBmYWlsZWRcbiIsIF9fZnVuY19fKTsKPiAr
CQkJCXJldHVybiByZXQ7Cj4gKwkJCX0KPiAgIAo+IC0JCXBoeV9wY3RybF9yZXNldChjcnUsIGNo
YW5uZWwpOwo+IC0JCXBoeV9kbGxfYnlwYXNzX3NldChwdWJsLCBkZHJfZnJlcSk7Cj4gKwkJCS8q
IExQRERSMi9MUEREUjMgbmVlZCB0byB3YWl0IERBSSBjb21wbGV0ZSwgbWF4IDEwdXMgKi8KPiAr
CQkJaWYgKGRyYW10eXBlID09IExQRERSMykKPiArCQkJCXVkZWxheSgxMCk7Cj4gICAKPiAtCQlp
ZiAoY2hhbm5lbCA+PSBwYXJhbXMtPmJhc2UubnVtX2NoYW5uZWxzKQo+IC0JCQljb250aW51ZTsK
PiArCQkJcGFyYW1zLT5jaFtjaF0uY2FwX2luZm8ucmFuayA9IHJhbms7Cj4gICAKPiAtCQlyZXQg
PSBwY3RsX2NmZyhkcmFtLCBjaGFuLCBjaGFubmVsLCBwYXJhbXMpOwo+IC0JCWlmIChyZXQgPCAw
KSB7Cj4gLQkJCXByaW50ZigiJXM6IHBjdGwgY29uZmlnIGZhaWxlZFxuIiwgX19mdW5jX18pOwo+
IC0JCQlyZXR1cm4gcmV0Owo+IC0JCX0KPiArCQkJLyoKPiArCQkJICogTFBERFIzIENBIHRyYWlu
aW5nIG1zdXQgYmUgdHJpZ2dlciBiZWZvcmUKPiArCQkJICogb3RoZXIgdHJhaW5pbmcuCj4gKwkJ
CSAqIEREUjMgaXMgbm90IGhhdmUgQ0EgdHJhaW5pbmcuCj4gKwkJCSAqLwo+ICsJCQlpZiAocGFy
YW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSMykKPiArCQkJCXRyYWluaW5nX2ZsYWcgfD0gUElf
Q0FfVFJBSU5JTkc7Cj4gICAKPiAtCQkvKiBzdGFydCB0byB0cmlnZ2VyIGluaXRpYWxpemF0aW9u
ICovCj4gLQkJcGN0bF9zdGFydChkcmFtLCBjaGFubmVsKTsKPiArCQkJaWYgKCEoZGF0YV90cmFp
bmluZygmZHJhbS0+Y2hhbltjaF0sIGNoLAo+ICsJCQkJCSAgICBwYXJhbXMsIHRyYWluaW5nX2Zs
YWcpKSkKPiArCQkJCWJyZWFrOwo+ICsJCX0KPiArCQkvKiBDb21wdXRlZCByYW5rIHdpdGggYXNz
b2NpYXRlZCBjaGFubmVsIG51bWJlciAqLwo+ICsJCXBhcmFtcy0+Y2hbY2hdLmNhcF9pbmZvLnJh
bmsgPSByYW5rOwo+ICsJfQo+ICAgCj4gLQkJLyogTFBERFIyL0xQRERSMyBuZWVkIHRvIHdhaXQg
REFJIGNvbXBsZXRlLCBtYXggMTB1cyAqLwo+IC0JCWlmIChkcmFtdHlwZSA9PSBMUEREUjMpCj4g
LQkJCXVkZWxheSgxMCk7Cj4gKwlwYXJhbXMtPmJhc2UubnVtX2NoYW5uZWxzID0gMDsKPiArCWZv
ciAoY2hhbm5lbCA9IDA7IGNoYW5uZWwgPCAyOyBjaGFubmVsKyspIHsKPiArCQljb25zdCBzdHJ1
Y3QgY2hhbl9pbmZvICpjaGFuID0gJmRyYW0tPmNoYW5bY2hhbm5lbF07Cj4gKwkJc3RydWN0IHNk
cmFtX2NhcF9pbmZvICpjYXBfaW5mbyA9ICZwYXJhbXMtPmNoW2NoYW5uZWxdLmNhcF9pbmZvOwo+
ICAgCj4gLQkJaWYgKGRhdGFfdHJhaW5pbmcoY2hhbiwgY2hhbm5lbCwgcGFyYW1zLCBQSV9GVUxM
X1RSQUlOSU5HKSkgewo+IC0JCQlwcmludGYoIiVzOiBkYXRhIHRyYWluaW5nIGZhaWxlZFxuIiwg
X19mdW5jX18pOwo+IC0JCQlyZXR1cm4gLUVJTzsKPiArCQlpZiAoY2FwX2luZm8tPnJhbmsgPT0g
MCkgewo+ICsJCQljbGVhcl9jaGFubmVsX3BhcmFtcyhwYXJhbXMsIGNoYW5uZWwpOwo+ICsJCQlj
b250aW51ZTsKPiArCQl9IGVsc2Ugewo+ICsJCQlwYXJhbXMtPmJhc2UubnVtX2NoYW5uZWxzKys7
Cj4gICAJCX0KPiAgIAo+IC0JCXNldF9kZHJjb25maWcoY2hhbiwgcGFyYW1zLCBjaGFubmVsLAo+
IC0JCQkgICAgICBwYXJhbXMtPmNoW2NoYW5uZWxdLmNhcF9pbmZvLmRkcmNvbmZpZyk7Cj4gKwkJ
ZGVidWcoIkNoYW5uZWwgIik7Cj4gKwkJZGVidWcoY2hhbm5lbCA/ICIxOiAiIDogIjA6ICIpOwo+
ICsKPiArCQlzZXRfZGRyY29uZmlnKGNoYW4sIHBhcmFtcywgY2hhbm5lbCwgY2FwX2luZm8tPmRk
cmNvbmZpZyk7Cj4gKwl9Cj4gKwo+ICsJaWYgKHBhcmFtcy0+YmFzZS5udW1fY2hhbm5lbHMgPT0g
MCkgewo+ICsJCXByaW50ZigiJXM6ICIsIF9fZnVuY19fKTsKPiArCQlwcmludGYoIiAtICVkTUh6
IGZhaWxlZCFcbiIsIHBhcmFtcy0+YmFzZS5kZHJfZnJlcSk7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7
Cj4gICAJfQo+ICAgCj4gICAJcGFyYW1zLT5iYXNlLnN0cmlkZSA9IGNhbGN1bGF0ZV9zdHJpZGUo
cGFyYW1zKTsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
