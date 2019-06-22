Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A924F60C
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Jun 2019 15:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZV3kVQ3dlcz1kckx/RyqDWdcrmZEB7BO46cbWr3NVRE=; b=TdfJqx6mOMk/6V
	mqKj0BviX+pV8XEq6KUlqK+asXuT+xE904bs3eA4p2x51qalAnLm9PWu0kpke3HMf5zmvvriZlynj
	378C9bK/fgjRQJBO8IQEUzbjsHbqHlpbSssZNMXwkQACRn4AD3Y2KnkWu0GNBtchbOnmX2yTVX9ny
	nWjYl+wPxSrT54ZIjhnHyXw53rMNk12nSn8210W2TL1IC7Vnzc5yR6PptWpY0pXM6iROMeB9kYuvl
	qAgYf7ockZLh80sAWFYKNHRk52kf+TO20dLG0r4SRtfq3GMD3+KhlBojyR++RMpcSOTCs5q9vApgj
	YpNaLgvJHcJ5bOLnkXUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hegPu-0007lJ-Ao; Sat, 22 Jun 2019 13:50:54 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hegPr-0007kt-EC
 for linux-rockchip@lists.infradead.org; Sat, 22 Jun 2019 13:50:52 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.227])
 by regular1.263xmail.com (Postfix) with ESMTP id 981AA20C;
 Sat, 22 Jun 2019 21:50:49 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.1.3] (unknown [110.125.168.244])
 by smtp.263.net (postfix) whith ESMTP id
 P26934T140432852621056S1561211448760378_; 
 Sat, 22 Jun 2019 21:50:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1f8673d2bb98608c31f14c8754ec7a32>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 110.125.168.244
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 7/8] rockchip: rk3399: tpl: Mark printascii into debug
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <fe95b621-ad16-7e41-0daf-c497d671a254@rock-chips.com>
Date: Sat, 22 Jun 2019 21:50:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190620185506.11449-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_065051_658543_AA3A65A5 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,


On 06/21/2019 02:55 AM, Jagan Teki wrote:
> Now, we have spl_board_init which has TPL banner prints.
>
> So mark the 'U-Boot TPL board init' print into debug.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/mach-rockchip/rk3399-board-tpl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-rockchip/rk3399-board-tpl.c b/arch/arm/mach-rockchip/rk3399-board-tpl.c
> index 72d0dd914e..4a301249b4 100644
> --- a/arch/arm/mach-rockchip/rk3399-board-tpl.c
> +++ b/arch/arm/mach-rockchip/rk3399-board-tpl.c
> @@ -47,7 +47,7 @@ void board_init_f(ulong dummy)
>  	 * printhex8(0x1234);
>  	 * printascii("string");
>  	 */
> -	printascii("U-Boot TPL board init\n");
> +	debug("U-Boot TPL board init\n");
>  #endif
>  	ret = spl_early_init();
>  	if (ret) {




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
