Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4212DEFF
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 Jan 2020 14:06:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NvPs4OSwpAOsz2d/Nvy8LR6kMOFB8lHZwVG2ejE6uvw=; b=AOJTPgw6e679bA/iqh366fO9m
	PIK5aXWbjI7ygzg783nrBK4+MJdDPsucaPSKvBkhAQudZxR2mYMz7zDwLTPTqiiGCixU3ofeK2T1X
	KU6duTzBvOfp/LDkKqpbjVvt95HABJVRqhQJ5ttPdz4R2ahRoy9fAbHxhlw07b83QE9bCCfrhVkHT
	PAOjZTT8d1rTsBvbzr7BZFNrhFfY4CImL+2kvnXPqRQOsS+GfLTAf5fqjo6129UPSo1vcWCaDn6kJ
	IXN1aRdh5ta3R/P3Aq7VgB70dImok+G78b+2kU8KeqbmkEThPwETLA+2RC+SGmW+G6kffQzudS+sg
	JC+bdvJIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imdhw-0003pl-Lt; Wed, 01 Jan 2020 13:06:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imdd1-0003zt-BU; Wed, 01 Jan 2020 13:01:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 857F531B;
 Wed,  1 Jan 2020 05:01:33 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E84953F68F;
 Wed,  1 Jan 2020 05:01:32 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix IR on Beelink A1
To: Heiko Stuebner <heiko@sntech.de>
References: <44269c08e2a5d75b03ded87d2eb11621762d8249.1577636223.git.robin.murphy@arm.com>
 <30349756.SWxbmzi8ve@phil>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3d0f69d5-739a-0566-b1d7-bc3c2f0c8045@arm.com>
Date: Wed, 1 Jan 2020 13:01:32 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <30349756.SWxbmzi8ve@phil>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_050135_437408_54100BCB 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-12-31 11:50 am, Heiko Stuebner wrote:
> Am Sonntag, 29. Dezember 2019, 18:48:05 CET schrieb Robin Murphy:
>> Apparently I wasn't paying enough attention... And nor is the lazy
>> test of `cat /dev/lirc0` sufficiently blunder-proof. Oh well, with
>> the correct polarity, let's also hook up a keymap now that one for
>> the standard Beelink remote has handily appeared.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
> 
> applied for 5.6

Thanks Heiko - although if you have any other fixes to send for 5.5 do 
you think this might be able to sneak in too? Someone mentioned on IRC 
that unlike mine, their box wouldn't even generate interrupts with the 
polarity backwards.

Cheers,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
