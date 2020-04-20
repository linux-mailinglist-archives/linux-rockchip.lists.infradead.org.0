Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCF91B0E37
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Apr 2020 16:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xGcZvotsYckwI5H5ZVnmraGhpNeE7Mq46aXCeClTwk=; b=LWhRnDZMdw30xs
	jen27t5dUqkpxixrgUjLlKab+1DMvtc6KXfudbv7vOeA5Cm8wYu2PMI0Ojhdr+9yDDOYOqhoiHF0B
	DsJe87HDeZi9tqjQp2uMuNt2XDhfxFZNR+AHdpYQAcFoQOVZ2lyouWZOp+VKMjm1Bt80TW+70DKij
	Grm0I2D4a9M6RdDrtVrwdeL1lnxvPnQy9tfR5E67ZXgYG73yw/G2B/qT1Gimn7BftrtWhR+KcpDqF
	b6bNtKVLUsPvaQWyQv3jD2SKWYCko7Q6duC9C7mXrKAhAXBOqXxIJnW84tWlS/lTJ14J4EbRRN2jw
	/328QPrBwuYvPPU+gJ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXIq-00068m-KX; Mon, 20 Apr 2020 14:21:40 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXIY-0005mk-1V
 for linux-rockchip@lists.infradead.org; Mon, 20 Apr 2020 14:21:23 +0000
Received: by mail-il1-x142.google.com with SMTP id w6so5565561ilg.1
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Apr 2020 07:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nnAOI1x4ASY+lCPHniKXrcB2zt/qr+P0D/sxPqSPkpA=;
 b=JHkY9gsqL6+5fcpChyfNBpdSGzn/++w/ZxNte9fLEMIU255uspsLg4uq0xDK7rrtDC
 Gp4VWSM+qk5q2eac/lWURoLMS+M4hppdbMCyt1SLx/C5ZJlbR4Ef0pqZhlvzZjvQQPmF
 5f7W5O5NJy22/Y1ObJJDJ+C8tDFij1/iWN2fg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nnAOI1x4ASY+lCPHniKXrcB2zt/qr+P0D/sxPqSPkpA=;
 b=I807bVPyAfhFIsfQ72TAACvwwdCsGNFmEiZYx0K/a7xpXj4D327ZczoUQTsF1KWDiC
 XtXovN+6lJFYZ62nI8hk3k5VUcnJnNh1xJfvLdIm6eEJPNb8oLiBMJK7EdKprV6PFZhq
 iIkxWMFnQ6NbXue9YrDL/IAVgJr3DI9kygPr6sBIg724WkMPcggWbVjT7v0X5b6LDz74
 tBFJY/wRs0UUFBzNcJHcn7NLYfcEEour0xplPAOJBsAz68fwlhCempbGZwqrVfvPCXJV
 ebeeqQ+YC9Qy44UBuuZokxMp4Dg+jdxIt18DDaoEduaVorlND4N1buIXKnvc3YnyDIhs
 Raag==
X-Gm-Message-State: AGi0PuaGWoWJtQb45Wp/WgfFGtWymIj8GNBM+4yNnzcl4fbeKNr8Bm3G
 IWIipBlbnJLIFQIM8b3yd6LpovGdYbOQk6IOf8T1eQ==
X-Google-Smtp-Source: APiQypIRvCnS4PSiGgvI5JZv/fA2M6vyOk0TCOpZ8JNXk96MVpTs4TX7l6Rv4hTZRPv5QYFwbPR9Ge86eQieg5vMGPU=
X-Received: by 2002:a92:cf0a:: with SMTP id c10mr14982475ilo.173.1587392479923; 
 Mon, 20 Apr 2020 07:21:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
In-Reply-To: <20200410182631.11951-1-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 20 Apr 2020 19:51:08 +0530
Message-ID: <CAMty3ZDUk2+N8up3zXaaV3XGy=SmoMB35HiyCXvamf2spwVjrA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] environment: distro: Add SF distro support
To: Tom Rini <trini@konsulko.com>, Kever Yang <kever.yang@rock-chips.com>, 
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_072122_240822_A4C42DA2 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 11:57 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This patch is based on Tom comments from previous
> version[1] for adding new distro support separately
> as in include/environment/distro/sf.h
>
> This new sf distro command not touch the existing
> include/config_distro_bootcmd.h.
>
> Used this new SF distro command in rk3399 platform.
>
> [1] https://patchwork.ozlabs.org/patch/1232666/
>
> Any inputs?
> Jagan.
>
> Jagan Teki (3):
>   environment: distro: Add SF distro command
>   rk3399: Add boot flash script offset, size
>   rockchip: Enable SF distro bootcmd

Applied to u-boot-spi/master

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
