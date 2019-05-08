Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE9A16FA3
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1oeiXsqag9BYyaZIxzyEGC3LLIMIGUjtxEqFWOJghs=; b=EldUvbwwA0+YEM
	XTit/j+ySljbFZJ1e223XI/e4uhhOO3PTNFeL0GFH15lWGbHjJyelPXAC0hiqUXPGteb9fj2CUlkk
	wewRqBrORwP34nu+CCuvyxl1VpCIZEuYjyU/TLSoZCbc6sQdT7Yy5L1KUl0yUJ7PcPhu2oJ85PN4M
	TmIq1o+5NztIOnZnZSnUGB8PcPWhbigcZ/R3t+SVFXvblcBPsZtR64L15dyahiDg4qy2XDTKOQ+Z7
	rOOxKvAEuv+GSoQ7YwKnXHYWkgfLBPWNDjeG4uMsj2AePKPpQDAo9tj/PwePkEp3JFCOUvgmc/h94
	WGiPsuU0EJPQ4L8jb1Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODXN-0002Gf-0l; Wed, 08 May 2019 03:46:33 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODXJ-0002Fy-Iz
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:46:30 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 25B743C8;
 Wed,  8 May 2019 11:46:28 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P12364T140129901463296S1557287184459009_; 
 Wed, 08 May 2019 11:46:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4c4e41a7fd8c266ea8c3aab6ab8b97ea>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 01/11] rockchip: dts: rk3399: Sync pwm2_pin_pull_down
 from Linux 5.1-rc2
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
 <20190507183625.5983-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <825829c0-1a60-38c4-e8a7-9a59f086aad0@rock-chips.com>
Date: Wed, 8 May 2019 11:46:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507183625.5983-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_204629_784931_CFB90EC9 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/08/2019 02:36 AM, Jagan Teki wrote:
> To make successful build with dts(i) files syncing from Linux 5.1-rc2
> the rk3399.dtsi would require pwm2_pin_pull_down.
>
> So, sync the pwm2_pin_pull_down node from Linux 5.1-rc2.  Since this
> node is strictly not part of any commit alone, I have mentioned
> Linux 5.1-rc2 tag for future reference of where would this sync
> coming from.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/dts/rk3399.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
> index b53e41b4dc..b73442ee34 100644
> --- a/arch/arm/dts/rk3399.dtsi
> +++ b/arch/arm/dts/rk3399.dtsi
> @@ -2495,6 +2495,11 @@
>  				rockchip,pins =
>  					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_none>;
>  			};
> +
> +			pwm2_pin_pull_down: pwm2-pin-pull-down {
> +				rockchip,pins =
> +					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_down>;
> +			};
>  		};
>  
>  		pwm3a {




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
