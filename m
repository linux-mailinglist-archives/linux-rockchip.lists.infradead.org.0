Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAEA1E1A2B
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 06:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f00tdeStaYPqBiuHAaGOkqgTUSOX6r8zeTihER87sCY=; b=En4/3obnVql/PE
	ht4fko7NcsfaLLQcm8JYfuQyoJg1MbaScKdzPrPI7Ra8wqCIyk7CLkc9Uwek5Zhyht7KoagY4BvrZ
	T3rPLueUxOYiJNV7Ab+bGuI9uIUIKEu8aK4ouxbdmSiIVClxUhQE7dG6BiO4qiJ7LIAhL6Skqqi5w
	TEfWKbZkpn3UqmuOvKcB0HusOuSijwsMjZ9knceTl7i1TNcjnrgSZUwOcpxzHW4kR91i7tHgJ517F
	fnqp/H6MVAV0elM9EtSeLwNUqtdtDzbAekI8GuN+bcndDDdr0fhtmFOCKM1Oa37quLclV0d0NYCeA
	cNyzV6Hqr8a7wqoeGQPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdR1H-0004t9-1v; Tue, 26 May 2020 04:16:51 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdR1C-0004sf-Rq
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 04:16:48 +0000
Received: by mail-ed1-x542.google.com with SMTP id d24so16446570eds.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 May 2020 21:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c1MByXbIgD8iynlhff/uHYg4JrJ41IE8l+6NIT30P4E=;
 b=B7s2efnEigVmVIIYy4ZYIt1wxt9B6OYejOHvVtJns7KT66zeuXAXLZWb/iN9pIufpb
 +25ykRlIiDFL5yMGRzsxtakGQ52rqYeFxjlMeBcJyV8St1otGjCYIUQIAShK6fUM0Kco
 XqkTidl6xP1KgBm1XdhBchAjNY7cvSuO2unKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c1MByXbIgD8iynlhff/uHYg4JrJ41IE8l+6NIT30P4E=;
 b=BYDq/5mNLpt0kIZP6HUCb1YSF+wpiMRWmO0QkgQllReoaOvo7S6p6iLTsFB27+CVKy
 DaCgZI8o55bl4r/5hJ5QMRh7X7Jh2BkEw0iT49x7XeQ3oOrLkOUlMPK32Lzxb+sver0B
 MTLwBeEVs/atOWUVgkh35V/roP433HtziQ1hQ8G99ltAHLoxFPF3ggy5xuUmllQSeEsm
 d1/9TH9WdqSYvP77XbJ7TsC9V9XPXn3cgENb+1A3w/bTzVELoG2QU3OJ+zWqKbxRsq6B
 l0pjAap6gvrsuBlw9AQsMZkXt5zhsJrrRztqC5f77d5qPBL4cbZAwsq4W20W9Tdq3rtR
 PwBg==
X-Gm-Message-State: AOAM531mLTfPhBTKFp89ybu6Lmynskz35V+uwuWC2cXHpMZdlKblvOt9
 dJHSqe4OiImuKO3j4qCOALFtLyn9EmjcWyBk9HElfw==
X-Google-Smtp-Source: ABdhPJzQzrdFBq1mgnsnMlOJnJzhbw0X/1rn6C+EO85o/aznOqAYGY8rUmitVFTErmb6N3Yvlfj1XmSZ1wDddP5ZVjQ=
X-Received: by 2002:a50:a985:: with SMTP id n5mr18383393edc.338.1590466605019; 
 Mon, 25 May 2020 21:16:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
In-Reply-To: <20200526033220.20047-1-frank.wang@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 26 May 2020 09:46:33 +0530
Message-ID: <CAMty3ZDxiDObLM-EXBHsoWwxk5M98vx3fTM26qGZtuKxttS52Q@mail.gmail.com>
Subject: Re: [PATCH v6 00/16] Add Rockchip RK3399 USB3.0 Host support
To: Frank Wang <frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_211646_900358_16166E65 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, jianing.ren@rock-chips.com,
 Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
 Belisko Marek <marek.belisko@gmail.com>, Simon Glass <sjg@chromium.org>,
 wmc@rock-chips.com, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 William Wu <william.wu@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>, chenjh@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 9:02 AM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> This series add quirks for DWC3 and add Rockchip RK3399 USB3.0 host support.
>
> The function has been tested pass on rk3399-evb and roc-rk3399-pc board.
>
> For V6 update:
>  - Use [PATCH v6 04/16] instead of [PATCH v5 05/16] to fix that the current
>    Generic PHY subsystem is unable to find PHY if the PHY node is not part of
>    the root structure.
>  - Add 'Reviewed-by' tag for all patches except [PATCH v6 04/16].
>
> For V5 update:
>  - Fix dwc3-generic driver followed Marek's comments for [PATCH v4 12/16].
>  - Add 'Reviewed-by' and 'Tested-by' tag for [PATCH v4 07/16] and [PATCH v4 08/16].
>
> For V4 update:
>  - Collect Jagan's all fixed patches [1].
>  - Amend specific u-boot changes from dts to dtsi for [PATCH v3 6/7].
>
> For V3 update:
>  - Fix compile error for [PATCH v2 1/9].
>  - Use Jagan's Type-C driver instead of [PATCH v2 5/9].
>  - Cleanup dts changes for [PATCH v2 7/9].
>  - Cleanup config changes for [PATCH v2 8/9] and [PATCH v2 9/9].
>
> For V2 update:
>  - Amend type-c driver followed Jagan's comments for [PATCH 5/8].
>  - Fix dts commit for [PATCH 7/8].
>  - Split RK3399 default config for [PATCH 8/8].
>  - Add 'Reviewed-by' tag for [PATCH 1/8], [PATCH 2/8] and [PATCH 3/8].
>
> [1] https://patchwork.ozlabs.org/project/uboot/cover/20200506075025.1677-1-jagan@amarulasolutions.com
>
> BR,
> Frank
>
> Frank Wang (8):
>   arm: mach-rockchip: bind sub-nodes for rk3399_syscon
>   usb: dwc3: add dis_enblslpm_quirk
>   usb: dwc3: add dis_u2_freeclk_exists_quirk
>   usb: dwc3: amend UTMI/UTMIW phy interface setup
>   usb: dwc3: add make compatible for rockchip platform
>   driver: usb: drop legacy rockchip xhci driver
>   ARM: dts: rk3399-evb: usb3.0 host support
>   configs: evb-rk3399: update support usb3.0 host

I have a new sandisk Type C and A storage disk. Here are the tests in
roc-rk3399-pc.

=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
        USB 2.0 Hub [MTT]

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 2 USB Device(s) found
scanning bus dwc3 for devices... cannot reset port 1!?
2 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
        USB 2.0 Hub [MTT]

  1  Hub (5 Gb/s, 0mA)
  |  U-Boot XHCI Host Controller
  |
  +-2  Mass Storage (5 Gb/s, 224mA)
       SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 2 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 2 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Mass Storage (480 Mb/s, 224mA)
       SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
        USB 2.0 Hub [MTT]

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... EHCI timed out on TD - token=0x80008d80

      USB device not accepting new address (error=22)
2 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 0 Storage Device(s) found
=>
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 3 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
    |   USB 2.0 Hub [MTT]
    |
    +-3  Mass Storage (480 Mb/s, 224mA)
         SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... EHCI timed out on TD - token=0x80008d80

      USB device not accepting new address (error=22)
2 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 0 Storage Device(s) found
=> usb reset
resetting USB...
Bus usb@fe380000: USB EHCI 1.00
Bus usb@fe3c0000: USB EHCI 1.00
Bus dwc3: usb maximum-speed not found
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
scanning bus usb@fe380000 for devices... 1 USB Device(s) found
scanning bus usb@fe3c0000 for devices... 3 USB Device(s) found
scanning bus dwc3 for devices... 1 USB Device(s) found
       scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
     u-boot EHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
    |   USB 2.0 Hub [MTT]
    |
    +-3  Mass Storage (480 Mb/s, 224mA)
         SanDisk Dual Drive 040130e3ee554b7078843f4eb331646

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
