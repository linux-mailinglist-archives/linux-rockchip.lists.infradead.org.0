Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F2F1E04E5
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 04:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vIDujTq72x6PwA0ZL79frGCaaOuTZ/dr8I5eOlCc+qc=; b=PhK+2Xnw6DJ59Zo0KEHtqjKkV
	Be5DPL9Pn1RAmy+6AhXEkP2YemL+jwl1G1bFs9gZy8Wckpq74ockcaZKo/lgvaDuh0fEZ2aYZB8LD
	tfHqyHzECNlta5Vv5YQLrYiTj+9qTnAyfKUt5cxlcCGN6EBmi4aIziTzICViKWkikL3q/8NTy7Qs6
	v7Z+YIIQzOZcvODeoKOQC65Ycy2JfQrKq4iDgajI0bos+4vR3BGL9U/D+kfbvT3q47w8EpYPsebj4
	nvW08dL5ADgo2AFeU3GUdrr/SzIFA/577vmugSl0XkIdRVS92zGvO/jBp7je/vcuL8vnL5mqoai74
	bDFLJfS+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd3Cj-0006dc-0g; Mon, 25 May 2020 02:51:05 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3Cg-0006d1-0Q
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 02:51:03 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 94C4C358;
 Mon, 25 May 2020 10:50:57 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.66] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7894T140607364265728S1590375055751095_; 
 Mon, 25 May 2020 10:50:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <695b8ffb0908c5629d661b7f4d37f0d9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH 2/3] nanopc-t4: Enable USB Gadget
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200524173213.201123-1-jagan@amarulasolutions.com>
 <20200524173213.201123-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <95288b8b-25ea-2559-1eb8-293a537f7afe@rock-chips.com>
Date: Mon, 25 May 2020 10:50:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200524173213.201123-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_195102_233886_5F812FA0 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8yNSDkuIrljYgxOjMyLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEVuYWJsZSBEV0Mz
IGNvcmUsIGdhZGdldCBmb3IgbmFub3BjLXQ0IGJvYXJkLgo+Cj4gVGhpcyB3b3VsZCBoZWxwIHRv
IHVzZSBmYXN0Ym9vdCBieSBkZWZhdWx0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgY29uZmln
cy9uYW5vcGMtdDQtcmszMzk5X2RlZmNvbmZpZyB8IDMgKysrCj4gICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvY29uZmlncy9uYW5vcGMtdDQtcmszMzk5
X2RlZmNvbmZpZyBiL2NvbmZpZ3MvbmFub3BjLXQ0LXJrMzM5OV9kZWZjb25maWcKPiBpbmRleCAz
YmI1YjQ5OGYyLi40MGZiNzk3YzQ5IDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3MvbmFub3BjLXQ0LXJr
MzM5OV9kZWZjb25maWcKPiArKysgYi9jb25maWdzL25hbm9wYy10NC1yazMzOTlfZGVmY29uZmln
Cj4gQEAgLTUwLDcgKzUwLDEwIEBAIENPTkZJR19VU0JfWEhDSV9IQ0Q9eQo+ICAgQ09ORklHX1VT
Ql9YSENJX0RXQzM9eQo+ICAgQ09ORklHX1VTQl9FSENJX0hDRD15Cj4gICBDT05GSUdfVVNCX0VI
Q0lfR0VORVJJQz15Cj4gK0NPTkZJR19VU0JfRFdDMz15Cj4gK0NPTkZJR19ST0NLQ0hJUF9VU0Iy
X1BIWT15Cj4gICBDT05GSUdfVVNCX0tFWUJPQVJEPXkKPiArQ09ORklHX1VTQl9HQURHRVQ9eQo+
ICAgQ09ORklHX1VTQl9IT1NUX0VUSEVSPXkKPiAgIENPTkZJR19VU0JfRVRIRVJfQVNJWD15Cj4g
ICBDT05GSUdfVVNCX0VUSEVSX0FTSVg4ODE3OT15CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
