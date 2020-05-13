Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8B41D1199
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 May 2020 13:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91bv1VX2x4fWu7oshTazEbCC8N+K6LH/fbAYoNinTCY=; b=a74jYVKgK7c+cZ
	iHkP93xK6tE9GxntDD8QsRBx85hVMYyV1iJl0KXoPVJUXqpvsh++Gep7/PIPauKWoSMQ6o8n0kvjG
	8WUtE/XvnXKJbynfmPB61/VmwFv/tn7RmazDBQEp3qKhVK16SwzZTasKU5CTo8hf8lIQzowQvli3z
	ePcKtTILO7qXv8m3/NQHG1oBj6QupXPox1eWtEZPOFkrDpXnmI3KG4DcO7iUtPp0XZNjwup9pLxbr
	1Hmi9cWSBGAtbnsu2N0lk06aMFRm6RLYBRMbWzGIvthACoQojOkcUVNyCg9+q7j3S+lM+hnxxb+O6
	YetIUxp4qcZgHBH2UM8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYplA-0000jd-2Y; Wed, 13 May 2020 11:41:12 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpl6-0000iH-HO
 for linux-rockchip@lists.infradead.org; Wed, 13 May 2020 11:41:10 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49MXmw3vcrz1qsb5;
 Wed, 13 May 2020 13:41:04 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49MXmw1xXLz1r6DW;
 Wed, 13 May 2020 13:41:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id wBbkQvoTOhbT; Wed, 13 May 2020 13:41:02 +0200 (CEST)
X-Auth-Info: qKA/iPUrIT56iK91sMKVsm/ZolDITKMREbjrClxFNok=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 13 May 2020 13:41:02 +0200 (CEST)
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
 <6f0482e0-eedc-b7e4-f6ab-cf82b26c22ec@denx.de>
 <9d80fda2-9760-0aec-6bb7-5680279b3a0f@rock-chips.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <16a2e9f6-45e5-cbc3-6d2c-d53c4b0afc0d@denx.de>
Date: Wed, 13 May 2020 13:41:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <9d80fda2-9760-0aec-6bb7-5680279b3a0f@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_044108_726597_3E596E1E 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

T24gNS8xMy8yMCAyOjQ3IEFNLCBGcmFuayBXYW5nIHdyb3RlOgo+IEhpIE1hcmVrLAo+IAo+IE9u
IDIwMjAvNS8xMiAxNToyNiwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDUvMTIvMjAgMzowOCBB
TSwgRnJhbmsgV2FuZyB3cm90ZToKPj4+IEhpIE1hcmVrLAo+Pj4KPj4+IE9uIDIwMjAvNS8xMSAx
Nzo0OCwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+Pj4gT24gNS8xMS8yMCA5OjU3IEFNLCBGcmFuayBX
YW5nIHdyb3RlOgo+Pj4+IFsuLi5dCj4+Pj4KPj4+Pj4gQEAgLTM5NCw2ICs0MDcsMTIgQEAgc3Rh
dGljIGludCBkd2MzX2dsdWVfcHJvYmUoc3RydWN0IHVkZXZpY2UgKmRldikKPj4+Pj4gwqDCoMKg
wqDCoMKgIGlmIChyZXQpCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+
Pj4+IMKgwqAgK8KgwqDCoCBpZiAoZ2x1ZS0+cmVzZXRzLmNvdW50IDwgMSkgewo+Pj4+IFRoaXMg
Y29uZGl0aW9uIGlzIG9ubHkgdHJ1ZSBpZiBjb3VudCA9PSAwID8KPj4+PiBXaGF0J3MgdGhlIHB1
cnBvc2Ugb2YgdGhpcyB0ZXN0ID8KPj4+IEZvciBwcmV2aW91cyBkdHMgb2YgdGhlIExpbnV4IGtl
cm5lbCwgdGhlIHJlc2V0IHBoYW5kbGVzIHdlcmUgaW4KPj4+IGR3YzMtZ2x1ZSBub2RlcywgaG93
ZXZlciwgdGhleSBhcmUgbW92ZWQgcmVjZW50bHkgaW50byBkd2MzIHRoYXQgaXMgYQo+Pj4gY2hp
bGQgbm9kZSBvZiBkd2MzLWdsdWUuCj4+Pgo+Pj4gU28gdGhlIGFib3ZlIGNvZGVzIGlzIHRvIG1h
a2UgY29tcGF0aWJsZS4KPj4gV2h5IGRvZXNuJ3QgaXQgY2hlY2sgZm9yIGNvdW50ID09IDAgdGhl
biA/Cj4+Cj4gV2lsbCBmaXguCgpUaGFua3MuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
