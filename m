Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73111B10B5
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Apr 2020 17:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1y3my1ppYSDe5GqkQZCKgRE/vGm76z/8zKkFdozYfvE=; b=cgV6+WHpto/jz5
	0pbg44BWOemwZKMAVsur+FWox5gTHzJ7YbCSdgeE66ppwZXQVhzBZS61Cvle+FSZ06Fnj9+Wlhi/i
	9bCpsfFym3dzmU2V0dfKVClqaOWyIXdWWqKR/e6X7aZKzKGN0xrSQu1+1Jj6bS9YmLlKQd1MYLEy8
	l6ET1D4lWTBoV+QT4hFjKPgNXliD4ilWub2Sp0xO/zKAa//Xcse6j0Ya5R0MkM9i2jJO6tjz77lrq
	OV8mzljixEoEbry4frX+VHhW+GOyCMRK7rfME4izUEP3LtB8GFRxboHNY9jU51uHUF78geoGjc+Ah
	LQ0MnJhbESiw0+oAruig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYiF-0007qR-64; Mon, 20 Apr 2020 15:51:59 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYiC-0007ps-8Y
 for linux-rockchip@lists.infradead.org; Mon, 20 Apr 2020 15:51:57 +0000
Received: by mail-il1-x143.google.com with SMTP id s10so9511319iln.11
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Apr 2020 08:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=35BCkd/xT2GKg6hQk4z4IuoAo0zi1EGmtjFKuSIYSK0=;
 b=LBlqqV80UL683lfxRJ/9eMkVmqMI9FxM2zxeD1MKXcV9VA8U6/fLgD86VI+B8oZSNa
 sREAbwtkNK9u9mbWN3K7TmKjlm/5W4h1/JvEBMfu+9NmkX02ECrATI69mhMY26ZVg63v
 Y3QbAz3oy4lwHqjiDGnzYtYX2yvKhkL7mJpWT6xwHwRHaSd9FkG0EP3iIdgb0GiKrlXA
 5Iw999eRGUp9Q2fPMd3ct0agNZwSezCdB0ZRgBVppmCQ+sltvFiSBKP9GVWTd0ZkbTWY
 fWQvJAiGFB+BZkhPDpplY5b8hijD1b65MM4QP4lBgACyUarMgePxPdfBNc7uwStTbB7H
 XZQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=35BCkd/xT2GKg6hQk4z4IuoAo0zi1EGmtjFKuSIYSK0=;
 b=IdvhLMMySLs3+9R5mncL6sdSKIYMlKrdP+gS8M2wfgYx8NO0htZregpRciSr194tay
 HHXN0VQ7lP26cJJONcJGY7d99/F5TYzT/Zbm8G3L5RiATKHBqRd7hQNMPrtjOIFar+q2
 5rh8ntjBkGvc8DlMbp+xbes71/Hc9dWpxHaFJv9x6c3SOoOb+NlshXSjPvTba9fWYiLE
 ZLwsLHeyNDWeWWYckUTUfPeuABI4q87hPTk4IEjP/5qeJ3il3l5WZsu3PJlxaSp0Fj7d
 rq3eRDvNVNP7C5I1PtPkkhtBIeDx6muA7mlNRoiTJoJs+ZBVdX2khokff6Pfq8/5P1Hp
 WUiQ==
X-Gm-Message-State: AGi0PuY9RWELJIaXszlTlyRsenwU3TR2SP0hFsNoe4Zj67yz3+fOZgI6
 xb0wz2Kn2s8IGgHTlKU3+HdgfuyUF3Sz/yWgeYg=
X-Google-Smtp-Source: APiQypIbiPkPdeSmg3LFXcFDcsRmUAw77SMO6sdZ6EYRVgxvBdfD8rh1b6frBv/qICnMWPxgvFI3gbyZIi0KCC5IZm0=
X-Received: by 2002:a05:6e02:cc4:: with SMTP id
 c4mr3005776ilj.31.1587397915049; 
 Mon, 20 Apr 2020 08:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
 <20200410182631.11951-3-jagan@amarulasolutions.com>
In-Reply-To: <20200410182631.11951-3-jagan@amarulasolutions.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Mon, 20 Apr 2020 16:51:43 +0100
Message-ID: <CALeDE9O2QaO7CnHPb1nQ2-J6NCWYD=PDSbhtMi-3N68Azm=nVw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] rk3399: Add boot flash script offset, size
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_085156_323497_56323A7A 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pbrobinson[at]gmail.com]
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
Cc: Tom Rini <trini@konsulko.com>, linux-rockchip@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 u-boot@lists.denx.de, sunil@amarulasolutions.com,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

> Most of the SPI flash devices in rockchip (rk3399)
> are 16MiB size. So, let's use the script offset at
> the end of 8K.

You wouldn't have the commands for writing the
idbloader.img/u-boot.itb to these SPI flash on one of these devices by
chance?

Peter

> This way it cannot overlap any offsets being used
> by software components in flash layout.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> Changes for v2:
> - new patch
>
>  include/configs/rk3399_common.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
> index 89a8a44bbe..01a9174bd2 100644
> --- a/include/configs/rk3399_common.h
> +++ b/include/configs/rk3399_common.h
> @@ -48,6 +48,8 @@
>
>  #define ENV_MEM_LAYOUT_SETTINGS \
>         "scriptaddr=0x00500000\0" \
> +       "script_offset_f=0xffe000\0" \
> +       "script_size_f=0x2000\0" \
>         "pxefile_addr_r=0x00600000\0" \
>         "fdt_addr_r=0x01f00000\0" \
>         "kernel_addr_r=0x02080000\0" \
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
