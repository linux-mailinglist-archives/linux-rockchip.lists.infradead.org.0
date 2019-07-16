Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34FA6A976
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jW73YFU4QqGj2Y9/3l/02YpLxZkYcxgOmwMPvSIfS5M=; b=PQoqWhafIeoOUR3hoWQHXqqv9
	x7Oq4pYcOvtIYTQ+zohCE9ANyYmrIVDPuIQGacEHbTK46rQwX6K2YlI9OtQ+/HH0xJi5cUsvj2sUR
	GUXMN/b0PW4ILLKMG371EZhGdj7nw55OCeOq2StEggaG9HbQKzTidoOQwvvbW30RSIjlBlzOvCMle
	i4t2akN1+K2Sf1pMavsvw3nL063WyXaEUg9APrQYv1vXobak6/dogscZL7ZvfSqyEW4ZwneefA/Co
	MKt94fgH73VeOEZGYlIMbF7fPuF356bs5EFJpjbqxyW2HRJ78Ft8IIgl/BvlO5Hcfq/PifwKLsCig
	aQfgbSHTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNNE-0004sJ-Sp; Tue, 16 Jul 2019 13:20:04 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNNB-0004VK-9E
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:20:02 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id 9FBA9394;
 Tue, 16 Jul 2019 21:19:59 +0800 (CST)
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
 P25752T140260390459136S1563283191867639_; 
 Tue, 16 Jul 2019 21:19:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6c1337782a052b59fefc88b97ebd5cc8>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 48/57] clk: rockchip: rk3399: Set 400MHz ddr clock
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-49-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b77d895b-5d32-5b9c-be98-f74bd261f153@rock-chips.com>
Date: Tue, 16 Jul 2019 21:19:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-49-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_062001_522369_3E76D908 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzdXBwb3J0
IGZvciBzZXR0aW5nIDQwME1IeiBkZHIgY2xvY2suCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBU
ZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4g
Q2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVy
LnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZl
cnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYyB8IDQgKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Ns
a19yazMzOTkuYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYwo+IGluZGV4IDFk
ZTIxYzlmM2UuLjc5MDA3Yjg2ODIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAv
Y2xrX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4g
QEAgLTgzOSw2ICs4MzksMTAgQEAgc3RhdGljIHVsb25nIHJrMzM5OV9kZHJfc2V0X2NsayhzdHJ1
Y3QgcmszMzk5X2NydSAqY3J1LAo+ICAgCQlkcGxsX2NmZyA9IChzdHJ1Y3QgcGxsX2RpdikKPiAg
IAkJey5yZWZkaXYgPSAyLCAuZmJkaXYgPSAxMDAsIC5wb3N0ZGl2MSA9IDQsIC5wb3N0ZGl2MiA9
IDF9Owo+ICAgCQlicmVhazsKPiArCWNhc2UgNDAwICogTUh6Ogo+ICsJCWRwbGxfY2ZnID0gKHN0
cnVjdCBwbGxfZGl2KQo+ICsJCXsucmVmZGl2ID0gMSwgLmZiZGl2ID0gNTAsIC5wb3N0ZGl2MSA9
IDMsIC5wb3N0ZGl2MiA9IDF9Owo+ICsJCWJyZWFrOwo+ICAgCWNhc2UgNjY2ICogTUh6Ogo+ICAg
CQlkcGxsX2NmZyA9IChzdHJ1Y3QgcGxsX2RpdikKPiAgIAkJey5yZWZkaXYgPSAyLCAuZmJkaXYg
PSAxMTEsIC5wb3N0ZGl2MSA9IDIsIC5wb3N0ZGl2MiA9IDF9OwoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
