Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90DE819AB
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 14:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v8BqGlcOtJSfsqYGxWcbI77TVfa8nC3WTVGiSGlv3BE=; b=mKLDFEfesjkY70CLgP47xsB88
	P4rbnVppaV7TNNCT/atRojJetcmc/2t+FwbtsvX/EvytCSeQzCqtIXp9vu3IOJftfqnh7zGzw7ADi
	MWO07rFHbbKSDgIMdvossgtUbLzwWEzj87ZXjliMptspKfw3EnbR+BvskIFD4ulsvPtl8CLUTvAJb
	rj5up+b79f0gO9UOU9rhyI41LGr+MOi+KO0j45oySRmwVO2UExVfSq7xcnQPEtJr8DUm0DbXg1X8y
	KdPpAbaWhqCK4ZbYKSQjP++aXwPFR1+n7Nq8uThsp9fLapgVXWjOcGBjkjHeKsxwiJlLe/qJmHOBX
	U9duiG9Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucL3-00069Q-DM; Mon, 05 Aug 2019 12:43:45 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucL0-000689-4P
 for linux-rockchip@lists.infradead.org; Mon, 05 Aug 2019 12:43:43 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.231])
 by regular1.263xmail.com (Postfix) with ESMTP id B7A453C8;
 Mon,  5 Aug 2019 20:43:39 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.33.93] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31308T140470159210240S1565009016339006_; 
 Mon, 05 Aug 2019 20:43:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a8dfc5b23137095110c58da86f18622d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 12/15] include: rk3399: Disable watchdog in TPL
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-13-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <fd03eeac-8012-5013-ab03-aa1e39156700@rock-chips.com>
Date: Mon, 5 Aug 2019 20:43:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729074711.16988-13-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_054342_359287_02014086 
X-CRM114-Status: GOOD (  12.45  )
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yOSDkuIvljYgzOjQ3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IERpc2FibGUgd2F0
Y2hkb2cgZm9yIFRQTCwgc2luY2UgdGhlcmUgaXMgbm8gc3VwcG9ydCBpdC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IC0tLQo+ICAg
aW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaCB8IDUgKysrKysKPiAgIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2NvbmZpZ3Mvcmsz
Mzk5X2NvbW1vbi5oIGIvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+IGluZGV4IDhk
ZjAxODAyODQuLjY3YjQ4ZTAzYmEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5
OV9jb21tb24uaAo+ICsrKyBiL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKPiBAQCAt
NDYsNiArNDYsMTEgQEAKPiAgICNkZWZpbmUgQ09ORklHX1NZU19TRFJBTV9CQVNFCQkwCj4gICAj
ZGVmaW5lIFNEUkFNX01BWF9TSVpFCQkJMHhmODAwMDAwMAo+ICAgCj4gKyNpZmRlZiBDT05GSUdf
VFBMX0JVSUxECj4gKyMgdW5kZWYgQ09ORklHX1dEVAo+ICsjIHVuZGVmIENPTkZJR19XQVRDSERP
Rwo+ICsjZW5kaWYKCgpJdCB3aWxsIGJlIGJldHRlciB0byB1c2UgQ09ORklHXyR7U1BMX1RQTH1X
RFQgaW4gd2F0Y2hkb2cgTWFrZWZpbGUsCgpiZWNhdXNlIGFsbCB0aGUgU29DIG5lZWRzIHRyZWF0
IHRoaXMgZHJpdmVyIHNlcGFyYXRlIGluIFRQTC9TUEwvVS1Cb290IApwcm9wZXIuCgoKVGhhbmtz
LAoKLSBLZXZlcgoKPiArCj4gICAjaWZuZGVmIENPTkZJR19TUExfQlVJTEQKPiAgIAo+ICAgI2Rl
ZmluZSBFTlZfTUVNX0xBWU9VVF9TRVRUSU5HUyBcCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
