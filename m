Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ADB12CC04
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 04:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pHv9i5lEEQfZCCBbxNz0HXBk7pQ+RYmY3lxDWUr0Qfc=; b=SqN8ktcJDkUlS4tdCGY1Z8chf
	98z3pittlDl1D3HdbpsuWHZPnI+q49qThcVuLFTwabEXTxsJIRvS/IbIqWWd6zrFNwIGS8xCQhmUd
	LvM9sVIQc/N6BmhTzcLXiXbOWIxMApDlDA6FvIx8saMxijiEQE71zv4mngHxvYdV9yHOsULv++X1y
	1XxjD+xK4mYYXVvGI0sVMzIMvnvSfRBXxKVetGZ5fFq9HgNnYeMxCi82yuurml7JIrJ0aeWn8gSfR
	XSeU4/JU0jtCY9Q6Fi5SDoVYiXQ0SCbims1jfyiQBdk/lnIELe5qNmPrNjNtMrOR1NUlSSgro2RP9
	jjzUQGEXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illIX-0007DP-Q6; Mon, 30 Dec 2019 03:00:49 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illIU-0007Cr-F2
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 03:00:47 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 8405240E;
 Mon, 30 Dec 2019 11:00:43 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27557T139927671527168S1577674842639866_; 
 Mon, 30 Dec 2019 11:00:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <91a45d92839fa37288a66572218d2f40>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 10/11] rockpro-rk3399: Enable SPI Flash
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-11-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <07679fa4-495a-8958-14c9-3e65dc679727@rock-chips.com>
Date: Mon, 30 Dec 2019 11:00:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-11-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190046_663075_7D7820C2 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUgd2lu
Ym9uZCBTUEkgZmxhc2ggZm9yIFJPQy1QQy1SSzMzOTkgYm9hcmQuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KUmV2aWV3ZWQtYnk6IEtl
dmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAt
LS0KPiAgIGFyY2gvYXJtL2R0cy9yazMzOTktcm9ja3BybzY0LXUtYm9vdC5kdHNpIHwgNCArKysr
Cj4gICBjb25maWdzL3JvY2twcm82NC1yazMzOTlfZGVmY29uZmlnICAgICAgICB8IDIgKysKPiAg
IDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vZHRzL3JrMzM5OS1yb2NrcHJvNjQtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5
LXJvY2twcm82NC11LWJvb3QuZHRzaQo+IGluZGV4IDQ2NDg1MTNlYTkuLmRlYWEzZWZkMzkgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzM5OS1yb2NrcHJvNjQtdS1ib290LmR0c2kKPiAr
KysgYi9hcmNoL2FybS9kdHMvcmszMzk5LXJvY2twcm82NC11LWJvb3QuZHRzaQo+IEBAIC02LDYg
KzYsMTAgQEAKPiAgICNpbmNsdWRlICJyazMzOTktdS1ib290LmR0c2kiCj4gICAjaW5jbHVkZSAi
cmszMzk5LXNkcmFtLWxwZGRyNC0xMDAuZHRzaSIKPiAgIC8gewo+ICsJYWxpYXNlcyB7Cj4gKwkJ
c3BpMCA9ICZzcGkxOwo+ICsJfTsKPiArCj4gICAJY2hvc2VuIHsKPiAgIAkJdS1ib290LHNwbC1i
b290LW9yZGVyID0gInNhbWUtYXMtc3BsIiwgJnNkbW1jLCAmc2RoY2k7Cj4gICAJfTsKPiBkaWZm
IC0tZ2l0IGEvY29uZmlncy9yb2NrcHJvNjQtcmszMzk5X2RlZmNvbmZpZyBiL2NvbmZpZ3Mvcm9j
a3BybzY0LXJrMzM5OV9kZWZjb25maWcKPiBpbmRleCA0OWUyN2M5MWNiLi42YTUwZWM3ZGJjIDEw
MDY0NAo+IC0tLSBhL2NvbmZpZ3Mvcm9ja3BybzY0LXJrMzM5OV9kZWZjb25maWcKPiArKysgYi9j
b25maWdzL3JvY2twcm82NC1yazMzOTlfZGVmY29uZmlnCj4gQEAgLTQ2LDYgKzQ2LDggQEAgQ09O
RklHX1JBTV9SSzMzOTlfTFBERFI0PXkKPiAgIENPTkZJR19CQVVEUkFURT0xNTAwMDAwCj4gICBD
T05GSUdfREVCVUdfVUFSVF9TSElGVD0yCj4gICBDT05GSUdfU1lTUkVTRVQ9eQo+ICtDT05GSUdf
U1BJX0ZMQVNIX0dJR0FERVZJQ0U9eQo+ICtDT05GSUdfUk9DS0NISVBfU1BJPXkKPiAgIENPTkZJ
R19VU0I9eQo+ICAgQ09ORklHX1VTQl9YSENJX0hDRD15Cj4gICBDT05GSUdfVVNCX1hIQ0lfRFdD
Mz15CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
