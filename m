Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F511D43CD
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Sd8GyrtL5x+wv7ujcDovEhH/j1VvZ954Oa6LN5ec9Q=; b=PyW7Jp1ts+Y/GfHwIFCi6o+GV
	WhHrE6AKncEjMDZSWDWvolVX69yhY78tAN2AaCYssm9nczrHXdsLVnzE2BB1XANcXqT42/Uwj0yTd
	pkOEeehip2s6EWPckCQx/QKLsZBTpQZWhhDz8AM7Tra+EPsZpBsrXMon7dvccEBXDYOHvimQQzVHO
	lbeFX9pvjALNgtojILmv4ZgDkkjumkkmJgDBgD+dlvhLlLi9Feq0jovt8jL3IFHKjJgO+iUT0UiVH
	aYWkasJAeLLxJLqeYDcxQDhy7OANZNEoBc2VsJ+ip+At7YPkuU2J1VS/nCeMY0jGc9va0VkBOSDpS
	OKqz28Fpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQUc-0003o1-MV; Fri, 15 May 2020 02:54:34 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQUZ-0003lH-QD
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:54:33 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id E15315F4;
 Fri, 15 May 2020 10:54:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P27335T140438151350016S1589511261745540_; 
 Fri, 15 May 2020 10:54:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <88f33cecc1aee97acb6d440e65fb6330>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 5/6] rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <71fb5935-b0f9-2692-ec2b-a9de350559a1@rock-chips.com>
Date: Fri, 15 May 2020 10:54:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200509165624.20791-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_195432_303963_E6A1E4FE 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, shawn.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMCDkuIrljYgxMjo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUgUENJ
ZS9NLjIgc3VwcG9ydCBvbgo+IC0gTmFub1BDLVQ0Cj4gLSBST0MtUkszMzk5LVBDIE1lenphbmlu
ZSBib2FyZHMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hp
cHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gQ2hhbmdlcyBmb3IgdjM6Cj4gLSBub25l
Cj4KPiAgIGFyY2gvYXJtL2R0cy9yazMzOTktdS1ib290LmR0c2kgICAgICAgICAgIHwgMSArCj4g
ICBjb25maWdzL25hbm9wYy10NC1yazMzOTlfZGVmY29uZmlnICAgICAgICB8IDQgKysrKwo+ICAg
Y29uZmlncy9yb2MtcGMtbWV6emFuaW5lLXJrMzM5OV9kZWZjb25maWcgfCA0ICsrKysKPiAgIDMg
ZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
ZHRzL3JrMzM5OS11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzOTktdS1ib290LmR0c2kK
PiBpbmRleCA5YmIxMzBhOTJhLi5kNjZkNWI2YTM4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0
cy9yazMzOTktdS1ib290LmR0c2kKPiArKysgYi9hcmNoL2FybS9kdHMvcmszMzk5LXUtYm9vdC5k
dHNpCj4gQEAgLTgsNiArOCw3IEBACj4gICAJYWxpYXNlcyB7Cj4gICAJCW1tYzAgPSAmc2RoY2k7
Cj4gICAJCW1tYzEgPSAmc2RtbWM7Cj4gKwkJcGNpMCA9ICZwY2llMDsKPiAgIAl9Owo+ICAgCj4g
ICAJY2ljOiBzeXNjb25AZmY2MjAwMDAgewo+IGRpZmYgLS1naXQgYS9jb25maWdzL25hbm9wYy10
NC1yazMzOTlfZGVmY29uZmlnIGIvY29uZmlncy9uYW5vcGMtdDQtcmszMzk5X2RlZmNvbmZpZwo+
IGluZGV4IGFlODY1OTA4ZDguLjNiYjViNDk4ZjIgMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9uYW5v
cGMtdDQtcmszMzk5X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3MvbmFub3BjLXQ0LXJrMzM5OV9k
ZWZjb25maWcKPiBAQCAtMTgsNiArMTgsNyBAQCBDT05GSUdfQ01EX0JPT1RaPXkKPiAgIENPTkZJ
R19DTURfR1BUPXkKPiAgIENPTkZJR19DTURfTU1DPXkKPiAgIENPTkZJR19DTURfVVNCPXkKPiAr
Q09ORklHX0NNRF9QQ0k9eQo+ICAgIyBDT05GSUdfQ01EX1NFVEVYUFIgaXMgbm90IHNldAo+ICAg
Q09ORklHX0NNRF9USU1FPXkKPiAgIENPTkZJR19TUExfT0ZfQ09OVFJPTD15Cj4gQEAgLTM0LDEw
ICszNSwxMyBAQCBDT05GSUdfTU1DX1NESENJX1JPQ0tDSElQPXkKPiAgIENPTkZJR19ETV9FVEg9
eQo+ICAgQ09ORklHX0VUSF9ERVNJR05XQVJFPXkKPiAgIENPTkZJR19HTUFDX1JPQ0tDSElQPXkK
PiArQ09ORklHX05WTUU9eQo+ICtDT05GSUdfUENJPXkKPiAgIENPTkZJR19QTUlDX1JLOFhYPXkK
PiAgIENPTkZJR19SRUdVTEFUT1JfUFdNPXkKPiAgIENPTkZJR19SRUdVTEFUT1JfUks4WFg9eQo+
ICAgQ09ORklHX1BXTV9ST0NLQ0hJUD15Cj4gK0NPTkZJR19ETV9SRVNFVD15Cj4gICBDT05GSUdf
QkFVRFJBVEU9MTUwMDAwMAo+ICAgQ09ORklHX0RFQlVHX1VBUlRfU0hJRlQ9Mgo+ICAgQ09ORklH
X1NZU1JFU0VUPXkKPiBkaWZmIC0tZ2l0IGEvY29uZmlncy9yb2MtcGMtbWV6emFuaW5lLXJrMzM5
OV9kZWZjb25maWcgYi9jb25maWdzL3JvYy1wYy1tZXp6YW5pbmUtcmszMzk5X2RlZmNvbmZpZwo+
IGluZGV4IDVhNjk0ZWRjMDMuLjBiODUzODA1ZjMgMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9yb2Mt
cGMtbWV6emFuaW5lLXJrMzM5OV9kZWZjb25maWcKPiArKysgYi9jb25maWdzL3JvYy1wYy1tZXp6
YW5pbmUtcmszMzk5X2RlZmNvbmZpZwo+IEBAIC0xOSw2ICsxOSw3IEBAIENPTkZJR19DTURfQk9P
VFo9eQo+ICAgQ09ORklHX0NNRF9HUFQ9eQo+ICAgQ09ORklHX0NNRF9NTUM9eQo+ICAgQ09ORklH
X0NNRF9VU0I9eQo+ICtDT05GSUdfQ01EX1BDST15Cj4gICAjIENPTkZJR19DTURfU0VURVhQUiBp
cyBub3Qgc2V0Cj4gICBDT05GSUdfQ01EX1RJTUU9eQo+ICAgQ09ORklHX1NQTF9PRl9DT05UUk9M
PXkKPiBAQCAtMzYsMTEgKzM3LDE0IEBAIENPTkZJR19TUElfRkxBU0hfV0lOQk9ORD15Cj4gICBD
T05GSUdfRE1fRVRIPXkKPiAgIENPTkZJR19FVEhfREVTSUdOV0FSRT15Cj4gICBDT05GSUdfR01B
Q19ST0NLQ0hJUD15Cj4gK0NPTkZJR19OVk1FPXkKPiArQ09ORklHX1BDST15Cj4gICBDT05GSUdf
UE1JQ19SSzhYWD15Cj4gICBDT05GSUdfUkVHVUxBVE9SX1BXTT15Cj4gICBDT05GSUdfUkVHVUxB
VE9SX1JLOFhYPXkKPiAgIENPTkZJR19QV01fUk9DS0NISVA9eQo+ICAgQ09ORklHX1JBTV9SSzMz
OTlfTFBERFI0PXkKPiArQ09ORklHX0RNX1JFU0VUPXkKPiAgIENPTkZJR19CQVVEUkFURT0xNTAw
MDAwCj4gICBDT05GSUdfREVCVUdfVUFSVF9TSElGVD0yCj4gICBDT05GSUdfUk9DS0NISVBfU1BJ
PXkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
