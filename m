Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB04C16362
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 14:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQZFfi4PKFLfeerPL43jIaoxxwqWSmcYzqPoF9EvE68=; b=Z4nQlVhtZZMZYm
	f2cVXxNCdcklSRUkTQR2Q/VHc32XFJoDlPisQcjwECUcoM4L8Hz3mPBFf1G0cO4/citopwlZab/gD
	CUaHN7Q/C0hG7nK8qxFbKXXhTqgx2a9pn26Ky16QzPoMlG6byYn/YBjG9a0sneGUASvXBy523ZCWQ
	fbpstsn/I6l5WVrPHeE5/GBvSXTijqDCbogvRhoxkcxVIOZRR8MHJXS2K6tQ9ixgLVo22DSJr+/g6
	ufsGTd0YWHG891iXWPs5gmSSIYGlw8YrHusfAPgNoIvQvRfLccXPty+j02baJ3bWUaA/JnsOAz8N1
	3fp2RmdR1N0D4fCFkGew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyp1-0005Re-2p; Tue, 07 May 2019 12:03:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyoy-0005RA-GX; Tue, 07 May 2019 12:03:45 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hNyot-0008KE-Sm; Tue, 07 May 2019 14:03:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Make rk3288-veyron-minnie run at hs200
Date: Tue, 07 May 2019 14:03:39 +0200
Message-ID: <4345663.CAMg3MOt9f@phil>
In-Reply-To: <20190503234142.228982-1-dianders@chromium.org>
References: <20190503234142.228982-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_050344_698038_1BA249C2 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 amstan@chromium.org, Shawn Lin <shawn.lin@rock-chips.com>,
 briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 4. Mai 2019, 01:41:42 CEST schrieb Douglas Anderson:
> As some point hs200 was failing on rk3288-veyron-minnie.  See commit
> 984926781122 ("ARM: dts: rockchip: temporarily remove emmc hs200 speed
> from rk3288 minnie").  Although I didn't track down exactly when it
> started working, it seems to work OK now, so let's turn it back on.
> 
> To test this, I booted from SD card and then used this script to
> stress the enumeration process after fixing a memory leak [1]:
>   cd /sys/bus/platform/drivers/dwmmc_rockchip
>   for i in $(seq 1 3000); do
>     echo "========================" $i
>     echo ff0f0000.dwmmc > unbind
>     sleep .5
>     echo ff0f0000.dwmmc > bind
>     while true; do
>       if [ -e /dev/mmcblk2 ]; then
>         break;
>       fi
>       sleep .1
>     done
>   done
> 
> It worked fine.
> 
> [1] https://lkml.kernel.org/r/20190503233526.226272-1-dianders@chromium.org
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
