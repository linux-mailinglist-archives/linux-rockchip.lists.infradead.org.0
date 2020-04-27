Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AAA1BAB0D
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 19:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qJQVqK0AOBj8YuECo9JYwVSo9BoWANYmPH/Kxu9pOhA=; b=hW0PwJxURBq95i9zulwsZU3qV
	uS9oa3cBjwL6v7c7yi4icel0rHSN9MMT1t6a0PU6Y+ErhhSl+ZvK4R28VeULZ8Nf02tKqd9vWB57Y
	5gu+lZV5dyMEz7sEOBsEskM017QEwazHQRKLOCEj/NPFm4g4DaC3zx3UU+NuUr942r/N+wP7BQB2j
	RieJjJnkojfhsiBIDxt+FwcD1poaeqrCQ9EmBpGn9/14Y0oYqlz6KclL4UN327WeSEoq0tV1qru10
	uK2Zgjsx2nezcPbOzJea3o2C3EdP4jkj0IRcbg+CFB+2ekFrECt6seeaYeQR2NXVn1Rm+oYcwDIJS
	la2yA+WKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Q9-0007Ch-KF; Mon, 27 Apr 2020 17:19:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7Py-0006xL-3R
 for linux-rockchip@lists.infradead.org; Mon, 27 Apr 2020 17:19:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 477B631B;
 Mon, 27 Apr 2020 10:19:41 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B16C53F68F;
 Mon, 27 Apr 2020 10:19:39 -0700 (PDT)
Subject: Re: [PATCH 5/8] pci: Add Rockchip PCIe controller driver
To: Jagan Teki <jagan@amarulasolutions.com>,
 Mark Kettenis <mark.kettenis@xs4all.nl>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-6-jagan@amarulasolutions.com>
 <016196137a6060e1@bloch.sibelius.xs4all.nl>
 <CAMty3ZC+DiW2gGjN3rWcrwHPXZfxuGhjJN-1caUXW-Ry7VNR+A@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9c00b50f-cf17-9c4e-4c75-b6e85668f9a2@arm.com>
Date: Mon, 27 Apr 2020 18:19:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAMty3ZC+DiW2gGjN3rWcrwHPXZfxuGhjJN-1caUXW-Ry7VNR+A@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_101942_199780_1D6E14A0 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Patrick Wildt <patrick@blueri.se>, U-Boot-Denx <u-boot@lists.denx.de>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020-04-25 8:36 pm, Jagan Teki wrote:
> On Sun, Apr 26, 2020 at 12:23 AM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:
>>
>>> From: Jagan Teki <jagan@amarulasolutions.com>
>>> Date: Sat, 25 Apr 2020 16:33:51 +0530
>>>
>>> Add Rockchip PCIe controller driver for rk3399 platform.
>>>
>>> Driver support Gen1 by operating as a Root complex.
>>>
>>> Thanks to Patrick for initial work.
>>
>> Tried to get this to work on my firefly-rk3399 which made me notice
>> some shortcomings:
>>
>> 1. The vpcie1v8 and vpcie0v9 supplies are optional, just like the
>>     vpcie3v3 supply.

FWIW those are "non-optional" in Linux in the sense that supplies to the 
PCIE_AVDD_0V9 and PCIE_AVDD_1V8 pins of the SoC must physically exist, 
even if they aren't described. If U-Boot doesn't have the same "create a 
dummy regulator if none is specified" behaviour then you might need some 
slightly different logic there.

The 3.3V and 12V supplies on the other hand may legitimately not be part 
of the board at all, depending on whether it implements a full-size 
slot, a mini-PCI/M.2 socket, a hard-wired endpoint chip, or just the 
data and clock signal pairs exposed on some non-standard connector.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
