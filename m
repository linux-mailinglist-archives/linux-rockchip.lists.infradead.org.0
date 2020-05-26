Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08AB1E1A28
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 06:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSilJ8ZHkoThsS9PVJJBrg0miOo3e+2tv/LicGp3CCA=; b=uI9AWs1logveXN
	rsNMxO89vfY+9H3cHYp9unKX9anHJLBNViF5kzejbkQwYCwJVdfTnb34UxVGRrZm+oS5amMu13Qiv
	emqvu8dIaEsQidGZwdnLFT77se1padjzZFGVRaTXwjUEjCXstFJS0k6+vOisqNpdgAVgluxj7NfVZ
	IUCSOO53yDFrTxaRX1RLfQcvBy+BZ+oF1JGQt6ZtRN00NJUANB0rS3/jMNPeEtqBRkQ/WQ18du2/L
	r2kAAHCfy6S9rsHl0KVfV+MszPIat040oD2BFSv+zsIlYeufvoSmfAaYWqeTH9xrxSI6zdDNAp1yP
	UdRK1hiIanhTBG4LjsTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdQxo-0002KC-0a; Tue, 26 May 2020 04:13:16 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdQxl-0002Je-KI
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 04:13:14 +0000
Received: by mail-ej1-x644.google.com with SMTP id x20so22262933ejb.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 May 2020 21:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+il+a8f2PR6u0jyHec8UFvCI2Gp8AYF5YcR/499uwrE=;
 b=G1GipZIEz/+nSbOsFo0es1rrCm8E5wjNN1NgUNqdj8XNSpauE+VYTk/ONpGrdQeIlI
 bIem6ytCLIsG0uGSQKXDt6iJsnAFxu+5TbZktJuVlJcOpwmUeIqS5JfhEjEbYqoe/8mS
 h/1ca5WYdzglJvJwEgNBOlY/19h1s77lWBfP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+il+a8f2PR6u0jyHec8UFvCI2Gp8AYF5YcR/499uwrE=;
 b=QP5V6IXKx0PPYcA4nMf8oQv8cR26xMtr2NRzeM/OWbrgSwCwt+hlOLg2OG2sUOYppW
 VURpeOJtUDzAT1rn158o6QOHqURXx9PsY54TX0u2PSjxPkfVSkPaAk+Iyld+/Yqfm6+t
 jsIbrfzb/VGjgZLdk8ZdREtZBQYX7+xkdv7UtyP1kH5MnznhgAHVbbT7tlCbeLQDFLu+
 RF0JZ65f7gE62IBV818YsLRPEV3qKw6mV8HdU9HBEKN3IaxFx8e8J76AVjx6E6MgyZAn
 6s54k+gcbkh8I1Gzk4wASR3nhrIBxYeIUsxl4C5jmsWayOVzZuADnhdmt7/DXiXiG1Uf
 ps+w==
X-Gm-Message-State: AOAM533JxA7Tutg/6iYpf/MsvbWy9Nnd8pNeWN9ZBip8aEnDvXdT+a2d
 +gd5Fu9jCStNcdLNKsCjFxJb6FvGhVpy3TXKOdeN2A==
X-Google-Smtp-Source: ABdhPJz9nsm0XTFxWLx8YY9/1jO8gpIubPjsrhRpvewyhrHNZ1GK5G6HzyYSP5Rxsrj1wJC1aiY6cYaujzn0boG0Cjs=
X-Received: by 2002:a17:906:7e56:: with SMTP id
 z22mr20600809ejr.60.1590466389598; 
 Mon, 25 May 2020 21:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033220.20047-5-frank.wang@rock-chips.com>
In-Reply-To: <20200526033220.20047-5-frank.wang@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 26 May 2020 09:42:58 +0530
Message-ID: <CAMty3ZCTLOE7NqHh3J+XNJvd85GSzPHfhay268EfwSvnqdLnQQ@mail.gmail.com>
Subject: Re: [PATCH v6 04/16] arm: mach-rockchip: bind sub-nodes for
 rk3399_syscon
To: Frank Wang <frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_211313_666081_692A45DC 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marek Vasut <marex@denx.de>, Bin Meng <bmeng.cn@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Belisko Marek <marek.belisko@gmail.com>, Simon Glass <sjg@chromium.org>,
 jianing.ren@rock-chips.com, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 William Wu <william.wu@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>, wmc@rock-chips.com,
 chenjh@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 9:02 AM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> There are some sub-nodes under the grf DT, so add bind callback
> function in rk3399 syscon driver to scan them recursively.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  arch/arm/mach-rockchip/rk3399/syscon_rk3399.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> index 259ca44d68..f27b0ced82 100644
> --- a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> +++ b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> @@ -20,6 +20,9 @@ static const struct udevice_id rk3399_syscon_ids[] = {
>  U_BOOT_DRIVER(syscon_rk3399) = {
>         .name = "rk3399_syscon",
>         .id = UCLASS_SYSCON,
> +#if !CONFIG_IS_ENABLED(OF_PLATDATA)
> +       .bind = dm_scan_fdt_dev,
> +#endif

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Jagan Teki <jagan@amarulasolutions.com> # roc-rk3399-pc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
