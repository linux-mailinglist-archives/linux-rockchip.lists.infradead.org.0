Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1201D43C0
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hHSgfpp2hTHqsavY3iVB3wmTxgXB33hI+mvjI0csiIQ=; b=tBNZiYOYPynlZdbAHG/3lY7IA
	D02KBhYunCoE7Pp+POdy8PRiA5lw3/f9pLuswIk0HXFjOcBYu+qxz6MNpQdcDp6cK7tYYXy8LefeN
	PK+Swrot17YSNaE+4+UUhUOOqGcxaDuC+4FL2TDOgtIjj6Q3VIU7BmS5fBbDnmGyT5RmI2+n0SdVc
	hMvHtQbgme4jKhk9dODsLHp1+YMQ9CiqHsU92exyUgwpxLFfOYi2yK0aVZyHtqmwMME0j0wVHSkmp
	NXoRDB1KIRwwZsJw21lNMLBJRe5LBV+0yrVXHtJera+vr0eq1bwhqwK75Cz41Aj8hwbDMGoqzY0uD
	K/XNTi32A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQRO-0003C9-Db; Fri, 15 May 2020 02:51:14 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQRL-0003Bh-Eg
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:51:12 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 407F9703;
 Fri, 15 May 2020 10:51:09 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P27335T140438723860224S1589511056286498_; 
 Fri, 15 May 2020 10:51:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e7343a8f87dafb10ee5adf559a3d0a69>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 15/16] configs: evb-rk3399: update support usb3.0 host
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071747.5727-1-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <253d687c-7bf3-7722-25a8-f426c5fc9ec6@rock-chips.com>
Date: Fri, 15 May 2020 10:50:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071747.5727-1-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_195111_747841_5402FE60 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjE3LCBGcmFuayBXYW5nIHdyb3RlOgo+IFVwZGF0ZSBldmIt
cmszMzk5IGRlZmF1bHQgY29uZmlnIHRvIHN1cHBvcnQgVVNCMy4wIEhvc3QuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJvY2stY2hpcHMuY29tPgo+IFJldmlld2Vk
LWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5
OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVy
Cj4gLS0tCj4gICBjb25maWdzL2V2Yi1yazMzOTlfZGVmY29uZmlnIHwgNiArKysrKysKPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9jb25maWdzL2V2
Yi1yazMzOTlfZGVmY29uZmlnIGIvY29uZmlncy9ldmItcmszMzk5X2RlZmNvbmZpZwo+IGluZGV4
IDdmMTRlMThiMWIuLjZjZmI0ZTVkYWMgMTAwNjQ0Cj4gLS0tIGEvY29uZmlncy9ldmItcmszMzk5
X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3MvZXZiLXJrMzM5OV9kZWZjb25maWcKPiBAQCAtMjgs
NiArMjgsNyBAQCBDT05GSUdfU1lTX1JFTE9DX0dEX0VOVl9BRERSPXkKPiAgIENPTkZJR19ORVRf
UkFORE9NX0VUSEFERFI9eQo+ICAgQ09ORklHX1JPQ0tDSElQX0dQSU89eQo+ICAgQ09ORklHX1NZ
U19JMkNfUk9DS0NISVA9eQo+ICtDT05GSUdfTUlTQz15Cj4gICBDT05GSUdfTU1DX0RXPXkKPiAg
IENPTkZJR19NTUNfU0RIQ0k9eQo+ICAgQ09ORklHX01NQ19TREhDSV9ST0NLQ0hJUD15Cj4gQEAg
LTM1LDEwICszNiwxMyBAQCBDT05GSUdfU0ZfREVGQVVMVF9TUEVFRD0yMDAwMDAwMAo+ICAgQ09O
RklHX0RNX0VUSD15Cj4gICBDT05GSUdfRVRIX0RFU0lHTldBUkU9eQo+ICAgQ09ORklHX0dNQUNf
Uk9DS0NISVA9eQo+ICtDT05GSUdfUEhZX1JPQ0tDSElQX0lOTk9fVVNCMj15Cj4gK0NPTkZJR19Q
SFlfUk9DS0NISVBfVFlQRUM9eQo+ICAgQ09ORklHX1BNSUNfUks4WFg9eQo+ICAgQ09ORklHX1JF
R1VMQVRPUl9QV009eQo+ICAgQ09ORklHX1JFR1VMQVRPUl9SSzhYWD15Cj4gICBDT05GSUdfUFdN
X1JPQ0tDSElQPXkKPiArQ09ORklHX0RNX1JFU0VUPXkKPiAgIENPTkZJR19ETV9STkc9eQo+ICAg
Q09ORklHX1JOR19ST0NLQ0hJUD15Cj4gICBDT05GSUdfQkFVRFJBVEU9MTUwMDAwMAo+IEBAIC00
OSw2ICs1Myw4IEBAIENPTkZJR19VU0JfWEhDSV9IQ0Q9eQo+ICAgQ09ORklHX1VTQl9YSENJX0RX
QzM9eQo+ICAgQ09ORklHX1VTQl9FSENJX0hDRD15Cj4gICBDT05GSUdfVVNCX0VIQ0lfR0VORVJJ
Qz15Cj4gK0NPTkZJR19VU0JfRFdDMz15Cj4gK0NPTkZJR19VU0JfRFdDM19HRU5FUklDPXkKPiAg
IENPTkZJR19VU0JfSE9TVF9FVEhFUj15Cj4gICBDT05GSUdfVVNCX0VUSEVSX0FTSVg9eQo+ICAg
Q09ORklHX1VTQl9FVEhFUl9BU0lYODgxNzk9eQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
