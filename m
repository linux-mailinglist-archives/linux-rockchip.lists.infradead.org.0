Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A916FDB27E
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 18:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dD6gft491R2RiYNdvXo0JSmIKP8rf0BrxJsKT+TULjk=; b=FoYrtf7k1OqTLnzg/OfLETvpV
	qd5NTfR9MxxH8EQpo12HOsZWEx10rl+59qesyIAX2eRpElONhmXHbSX/2/AJNONUfwDMFd//D6ZL5
	FBZ7oE0yeoPLhwivPN7g8kQaCTE4gMQH82vV31O1c61bT3RgxhEKkiZjHZM1k9CVu5/gHu0Db6ZsN
	eNfgrjUxWzNLzGI/0BXsyAeXNAvClyuw58NitYtHPxkd7kVjvQCzwKAJ6cgzIqlqUAc5jCR2FLMH0
	ClKzhXxutRUiPcoCpFR6sSUf+vl/38vrSRGmTydj3OOKjovH/4KMi9EeJiFVo+FuIzq7G/e/A5Xwj
	Z+ZlS+ILA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8kb-0002I3-Fj; Thu, 17 Oct 2019 16:35:45 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8kY-0002Ge-Ij
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 16:35:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79737328;
 Thu, 17 Oct 2019 09:35:31 -0700 (PDT)
Received: from [10.1.197.57] (unknown [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 244193F6C4;
 Thu, 17 Oct 2019 09:35:31 -0700 (PDT)
Subject: Re: rk3328 USB3 controller
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org
References: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <65610976-8cb9-c0cd-d4a7-b8951b836fd7@arm.com>
Date: Thu, 17 Oct 2019 17:35:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_093542_661981_7147505A 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 16/10/2019 19:54, Peter Geis wrote:
> Good Afternoon,
> 
> Is there a particular reason why the USB3 controller on the rk3328 has
> not been enabled?
> It's enabled on the TeamFirefly source [0].
> I pulled it in to my device tree and have been using a USB3 SSD as my
> boot device for over a year now.

IIRC, the issue is that it's effectively *only* usable for a boot device 
(or possibly with a fixed hub), since without the phy driver, as soon as 
the initial device is unplugged the controller can no longer detect 
anything being plugged in again.

Robin.

> 
> If I were to submit the patch, would y'all be open to pulling it in?
> 
> [0] https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
