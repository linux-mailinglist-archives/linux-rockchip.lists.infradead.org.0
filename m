Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47B11CEEC5
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 May 2020 10:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQGcG3K+INdxgP9RTVxn8sIY/5O+SCvFTkBxryiqeKg=; b=jDW8uHNj/qyEvy
	r0jgsfo77e7HcwGadjhbQpRLeAKeCBUEj4Gc7guBPIK8wFnl9hzWnvOTPfH64uUJZqcFJIJbdVS+6
	nLjG4X50BeHCMSbhk6tGcnUjmiW/83Mq2eqHIiP8N1ylZguPnAu1U4Qd2gDbsvZnYwe0rq+Jd9xGM
	vG8ISY2R7uYleeueB7yf/rwL6XNNvoJ9g5nL1bDacAMjWh2nVsbcKFSN2u5EiLbOlNwn2JOf9UUZ9
	Vjgvv+/IajVQNyXFXNDOC4AzScVAa/LjNozq0zW1llssSob4ksK+FRVN1FoYhyTEF7hAjSeFvH6KO
	bUhFbQ22Qqf8XRXyeFgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPv9-0006PL-Er; Tue, 12 May 2020 08:05:47 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPv6-0006OJ-4k
 for linux-rockchip@lists.infradead.org; Tue, 12 May 2020 08:05:45 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49Lr2j6yYqz1r6Rt;
 Tue, 12 May 2020 10:05:33 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49Lr2j526wz1qv7p;
 Tue, 12 May 2020 10:05:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id p0pMb0Zr0hNw; Tue, 12 May 2020 10:05:30 +0200 (CEST)
X-Auth-Info: REdBp9Ef0P0zmqvapZcKcrAojvDXwQQ+JLrQAjQX8rE=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 12 May 2020 10:05:30 +0200 (CEST)
Subject: Re: [PATCH v4 12/16] usb: dwc3: add make compatible for rockchip
 platform
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org, kever.yang@rock-chips.com
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075725.26665-1-frank.wang@rock-chips.com>
 <20200511075725.26665-3-frank.wang@rock-chips.com>
 <502d8fff-5ae2-b47f-f483-62cd24177ed1@denx.de>
 <618d46f5-7970-9b27-e912-36f21b24a957@rock-chips.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <6f0482e0-eedc-b7e4-f6ab-cf82b26c22ec@denx.de>
Date: Tue, 12 May 2020 09:26:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <618d46f5-7970-9b27-e912-36f21b24a957@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_010544_333088_60995B59 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gNS8xMi8yMCAzOjA4IEFNLCBGcmFuayBXYW5nIHdyb3RlOgo+IEhpIE1hcmVrLAo+IAo+IE9u
IDIwMjAvNS8xMSAxNzo0OCwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDUvMTEvMjAgOTo1NyBB
TSwgRnJhbmsgV2FuZyB3cm90ZToKPj4gWy4uLl0KPj4KPj4+IEBAIC0zOTQsNiArNDA3LDEyIEBA
IHN0YXRpYyBpbnQgZHdjM19nbHVlX3Byb2JlKHN0cnVjdCB1ZGV2aWNlICpkZXYpCj4+PiDCoMKg
wqDCoMKgIGlmIChyZXQpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4+IMKg
ICvCoMKgwqAgaWYgKGdsdWUtPnJlc2V0cy5jb3VudCA8IDEpIHsKPj4gVGhpcyBjb25kaXRpb24g
aXMgb25seSB0cnVlIGlmIGNvdW50ID09IDAgPwo+PiBXaGF0J3MgdGhlIHB1cnBvc2Ugb2YgdGhp
cyB0ZXN0ID8KPiAKPiBGb3IgcHJldmlvdXMgZHRzIG9mIHRoZSBMaW51eCBrZXJuZWwsIHRoZSBy
ZXNldCBwaGFuZGxlcyB3ZXJlIGluCj4gZHdjMy1nbHVlIG5vZGVzLCBob3dldmVyLCB0aGV5IGFy
ZSBtb3ZlZCByZWNlbnRseSBpbnRvIGR3YzMgdGhhdCBpcyBhCj4gY2hpbGQgbm9kZSBvZiBkd2Mz
LWdsdWUuCj4gCj4gU28gdGhlIGFib3ZlIGNvZGVzIGlzIHRvIG1ha2UgY29tcGF0aWJsZS4KCldo
eSBkb2Vzbid0IGl0IGNoZWNrIGZvciBjb3VudCA9PSAwIHRoZW4gPwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
