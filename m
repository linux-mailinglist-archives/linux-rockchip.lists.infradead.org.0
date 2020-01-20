Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618AD143114
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 18:51:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7lxIARKBTMJQYidw3PKCY1uOhJiwS59RR+nbIMdXwK0=; b=fVIJmHq74jZivKnL5jUzzsw5+
	JDrOQ2BOhwwUAnyGy19L2RQZIMqPVHrfa7fvb/xtJf/0qlBMS7PwufK+DtllYEMknmajeEqQKnLSN
	Z91rKJ+Vi7sCFvuSyzRY872cafYGD09a6e0s2QtZ6itzu+2G0s6gYRiP3wpGcMEvvP1Ssguq3rXVx
	Igi/f6Zd6PemODGoMaVH9R3ry7DznAfSAnhf2499SYGZUT3a6RgmaPQNTcNW43FTP+BynjVoI8CiC
	6wzT2kRnn0KVJ3FAAiRteLL6L1RTegxnrE9eKtqtSVzy+lOxbauE1VOAuNrDbT13kGoY8Y6C1dClA
	eZmjQc82Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbCS-0000u3-3j; Mon, 20 Jan 2020 17:50:56 +0000
Received: from mail.csgraf.de ([188.138.100.120] helo=zulu616.server4you.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itbCK-0000tR-Kz
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 17:50:54 +0000
Received: from 38f9d3867b82.ant.amazon.com (unknown [3.122.114.9])
 by csgraf.de (Postfix) with ESMTPSA id EEACD390037A;
 Mon, 20 Jan 2020 18:40:39 +0100 (CET)
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
To: Tom Rini <trini@konsulko.com>, Jagan Teki <jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
From: Alexander Graf <agraf@csgraf.de>
Message-ID: <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
Date: Mon, 20 Jan 2020 18:40:39 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200120172240.GX8732@bill-the-cat>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_095048_828952_D510C8BF 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 Peter Robinson <pbrobinson@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


On 20.01.20 18:22, Tom Rini wrote:
> +A few people that may have insight to my question
>
> On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
>
>> Add distro boot command support for SPI flash.
>>
>> This distro boot will read the boot script at specific
>> location at the flash and start sourcing the same.
>>
>> The common macro like BOOTENV_SHARED_FLASH would help
>> to extend the support for nand flash in future.
>>
>> Cc: Tom Rini <trini@konsulko.com>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> What distro is this for?  My concern here is that hundreds of boards
> (literally) grow by a few hundred bytes to add in this bit of additional
> default logic.  That's not a big problem if distributions are now going
> to be using SPI flash as where they're programming in their bootscript.
> But, who is doing that?  Thanks!


I am not aware of any "distro" that puts a U-Boot script at offset 0 of 
the SPI Flash.

Traditionally, SPI Flash boot setups were always very hand crafted - 
exactly the opposite of what distro boot is for. That said, I think 
supporting SPI Flash boot for rk3399 is great! Albeit I would personally 
only store U-Boot and the environment on SPI, not the target OS.

Jagan, is putting a U-Boot script on the SPI Flash something you thought 
of or something that the rk3399 reference board already does? If it's 
the latter, maybe you could add it as a board custom boot function?


Alex


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
