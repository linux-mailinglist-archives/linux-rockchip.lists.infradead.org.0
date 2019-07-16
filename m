Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57D96A319
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IUqXRZLr6OROMzGCyipYNftuh10SCbbOVIVlQijOp10=; b=jaTXu0AJPB56T8E+KrS2kiQ24
	BobaaYkzzXlfABgbGuQOmPZXKFmeSdG/FPZv6WS6XSbVAJ0PZJIdhfYINHahwZH+sPej0PGR58CZl
	XNgbCUMCgm9OwGDVPkdK63QB+wagWbBIpoIHxO4NofX6haDuT7gwySgyJYrlRV+qf++qnaR7bJRla
	kpy/2njmsgsztHxiMD9rnwR+p+9da4DKOpGRh+b/EuBNFkdOvWbAXoIMDc58yvoT7+9gIWeeudfR+
	ajTpJrnIevXj8yLU6eF+V0qSiPBCbNcHTG8WhE/0tsBMdn0CDMeCE47AEqS+YP2p9UB6BVLF3Jv2H
	JVn7OkUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI47-0005Lv-0J; Tue, 16 Jul 2019 07:39:59 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI42-0005La-W6
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:39:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.174])
 by regular1.263xmail.com (Postfix) with ESMTP id F1FAA31F;
 Tue, 16 Jul 2019 15:39:51 +0800 (CST)
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
 P3349T139990019335936S1563262786010643_; 
 Tue, 16 Jul 2019 15:39:46 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <778fcd98126dcaed4b1d9efe84060dd7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 06/18] ram: rk3399: Move pwrup_srefresh_exit to
 dram_info
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e701953e-f457-20a8-e8ed-986682453206@rock-chips.com>
Date: Tue, 16 Jul 2019 15:39:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003955_424385_0A5BF456 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBwd3J1cF9z
cmVmcmVzaF9leGl0IHRvIGJlIHBhcnQgb2YgZHJhbV9pbmZvIHNvLXRoYXQKPiB0aGUgaXQgY2Fu
IGhlbHAgdG8gc3VwcG9ydCBwd3J1cF9zcmVmcmVzaF9leGl0IGluIGluZGl2aWR1YWwKPiBjaGFu
bmVscyB3aGlsZSBzdGFydGluZyBwY3RsIGluIGZ1dHVyZS4KPgo+IE5vIGZ1bmN0aW9uYWxpdHkg
Y2hhbmdlLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0
aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBz
LmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAv
c2RyYW1fcmszMzk5LmMgfCAxMyArKysrKysrLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFt
L3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmsz
Mzk5LmMKPiBpbmRleCBhNWRhOTg1ZTFhLi42ZTk0NGNhZmQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2No
aXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtNDksNiArNDksNyBAQCBzdHJ1Y3QgY2hhbl9pbmZvIHsK
PiAgIHN0cnVjdCBkcmFtX2luZm8gewo+ICAgI2lmIGRlZmluZWQoQ09ORklHX1RQTF9CVUlMRCkg
fHwgXAo+ICAgCSghZGVmaW5lZChDT05GSUdfVFBMKSAmJiBkZWZpbmVkKENPTkZJR19TUExfQlVJ
TEQpKQo+ICsJdTMyIHB3cnVwX3NyZWZyZXNoX2V4aXQ7Cj4gICAJc3RydWN0IGNoYW5faW5mbyBj
aGFuWzJdOwo+ICAgCXN0cnVjdCBjbGsgZGRyX2NsazsKPiAgIAlzdHJ1Y3QgcmszMzk5X2NydSAq
Y3J1Owo+IEBAIC00ODcsOCArNDg4LDggQEAgc3RhdGljIGludCBwaHlfaW9fY29uZmlnKGNvbnN0
IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiAtc3Rh
dGljIGludCBwY3RsX2NmZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLCB1MzIgY2hhbm5l
bCwKPiAtCQkgICAgY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAr
c3RhdGljIGludCBwY3RsX2NmZyhzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLCBjb25zdCBzdHJ1Y3Qg
Y2hhbl9pbmZvICpjaGFuLAo+ICsJCSAgICB1MzIgY2hhbm5lbCwgY29uc3Qgc3RydWN0IHJrMzM5
OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAgIHsKPiAgIAl1MzIgKmRlbmFsaV9jdGwgPSBjaGFu
LT5wY3RsLT5kZW5hbGlfY3RsOwo+ICAgCXUzMiAqZGVuYWxpX3BpID0gY2hhbi0+cGktPmRlbmFs
aV9waTsKPiBAQCAtNDk2LDcgKzQ5Nyw2IEBAIHN0YXRpYyBpbnQgcGN0bF9jZmcoY29uc3Qgc3Ry
dWN0IGNoYW5faW5mbyAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gICAJY29uc3QgdTMyICpwYXJhbXNf
Y3RsID0gcGFyYW1zLT5wY3RsX3JlZ3MuZGVuYWxpX2N0bDsKPiAgIAljb25zdCB1MzIgKnBhcmFt
c19waHkgPSBwYXJhbXMtPnBoeV9yZWdzLmRlbmFsaV9waHk7Cj4gICAJdTMyIHRtcCwgdG1wMSwg
dG1wMjsKPiAtCXUzMiBwd3J1cF9zcmVmcmVzaF9leGl0Owo+ICAgCWludCByZXQ7Cj4gICAJY29u
c3QgdWxvbmcgdGltZW91dF9tcyA9IDIwMDsKPiAgIAo+IEBAIC01MTgsNyArNTE4LDggQEAgc3Rh
dGljIGludCBwY3RsX2NmZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLCB1MzIgY2hhbm5l
bCwKPiAgIAl3cml0ZWwocGFyYW1zLT5waHlfcmVncy5kZW5hbGlfcGh5WzkxMV0sICZkZW5hbGlf
cGh5WzkxMV0pOwo+ICAgCXdyaXRlbChwYXJhbXMtPnBoeV9yZWdzLmRlbmFsaV9waHlbOTEyXSwg
JmRlbmFsaV9waHlbOTEyXSk7Cj4gICAKPiAtCXB3cnVwX3NyZWZyZXNoX2V4aXQgPSByZWFkbCgm
ZGVuYWxpX2N0bFs2OF0pICYgUFdSVVBfU1JFRlJFU0hfRVhJVDsKPiArCWRyYW0tPnB3cnVwX3Ny
ZWZyZXNoX2V4aXQgPSByZWFkbCgmZGVuYWxpX2N0bFs2OF0pICYKPiArCQkJCSAgICBQV1JVUF9T
UkVGUkVTSF9FWElUOwo+ICAgCWNscmJpdHNfbGUzMigmZGVuYWxpX2N0bFs2OF0sIFBXUlVQX1NS
RUZSRVNIX0VYSVQpOwo+ICAgCj4gICAJLyogUEhZX0RMTF9SU1RfRU4gKi8KPiBAQCAtNTk0LDcg
KzU5NSw3IEBAIHN0YXRpYyBpbnQgcGN0bF9jZmcoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hh
biwgdTMyIGNoYW5uZWwsCj4gICAJZGVidWcoIkRSQU0gKCVzKTogcGh5IGxvY2tlZCBhZnRlciAl
bGQgbXNcbiIsIF9fZnVuY19fLCBnZXRfdGltZXIodG1wKSk7Cj4gICAKPiAgIAljbHJzZXRiaXRz
X2xlMzIoJmRlbmFsaV9jdGxbNjhdLCBQV1JVUF9TUkVGUkVTSF9FWElULAo+IC0JCQlwd3J1cF9z
cmVmcmVzaF9leGl0KTsKPiArCQkJZHJhbS0+cHdydXBfc3JlZnJlc2hfZXhpdCk7Cj4gICAJcmV0
dXJuIDA7Cj4gICB9Cj4gICAKPiBAQCAtMTE3OSw3ICsxMTgwLDcgQEAgc3RhdGljIGludCBzZHJh
bV9pbml0KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJCWlmIChjaGFubmVsID49IHBhcmFt
cy0+YmFzZS5udW1fY2hhbm5lbHMpCj4gICAJCQljb250aW51ZTsKPiAgIAo+IC0JCXJldCA9IHBj
dGxfY2ZnKGNoYW4sIGNoYW5uZWwsIHBhcmFtcyk7Cj4gKwkJcmV0ID0gcGN0bF9jZmcoZHJhbSwg
Y2hhbiwgY2hhbm5lbCwgcGFyYW1zKTsKPiAgIAkJaWYgKHJldCA8IDApIHsKPiAgIAkJCXByaW50
ZigiJXM6IHBjdGwgY29uZmlnIGZhaWxlZFxuIiwgX19mdW5jX18pOwo+ICAgCQkJcmV0dXJuIHJl
dDsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
