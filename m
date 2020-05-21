Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58E21DC690
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 07:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1+/zhkQCVV87FnlnlhPw4Zy9yPhVSdNTGDf4V3RH+Y=; b=WB4XLW62whp/b5
	Z499dBKyuOrYo26omPs116UgwJa9VGaIbInOMQ0SEfMa/17oyMhG/8LjSNFa7Yg7E+5Q+T0XGItQv
	nhgQsi8AyT/hqt3obBim+Nruzql3apOXcpVPK3VwNOvAWCkLTYa4mjjjJyxRLg4gHcppQGep0mTqb
	sSju564TCArcs7qXtmf5YJcz8oVL9+2WG9muVXBaDnrIUT+Bv/kTDqat+IgMNbWyBaGU2SgLU3vjI
	4d89kYFOMzO41ZFHa4Ymt/+gjfaf90DQa2LX0OSKQT6Zt05os4xHeI7oJUn98k7WCvL58bg+si2al
	geZHTKpJGqll6V+SMb1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbdcI-0001Dt-MR; Thu, 21 May 2020 05:19:38 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbdcF-0001DI-8e
 for linux-rockchip@lists.infradead.org; Thu, 21 May 2020 05:19:36 +0000
Received: by mail-il1-x142.google.com with SMTP id j2so5820328ilr.5
 for <linux-rockchip@lists.infradead.org>; Wed, 20 May 2020 22:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rHAfficG5kr1zSpE5liDzM3e50KvBNcdKV+OfPohQjA=;
 b=HMgHqyX6RYxUwz1hGmpLCES/Rkti7Wpn5wV8nHosHQEJ4ulgE/nFgXEpSEKD/2K1+n
 +mZkAXVwStsmljUFvqLMXCJYW2peu6mzVCLxeCPMCqVlbcOJ9TkkvkCVFu+Jit/66weJ
 yVAN3IporBXxjmYwas6ebk13qRpq8UkxX0se0O294B3DAJQAEPRKPys4fiy4PCRsUPU9
 wvZNeu0UBmMBiVde276y19klNrFDHu1N/L6Hm1jzhHTV2FXGQbzGCrBJXYEbZM+wQKJK
 kRe+YGZw2/dwiQGe4Hyg/u3xpvNj4E5YwKcA0PWY6fDtkbZP6PQ8hiKriHrEnyJtPHVN
 7rhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rHAfficG5kr1zSpE5liDzM3e50KvBNcdKV+OfPohQjA=;
 b=CVFu6W2pxlqkfy3nlpRBctmK1H/94Qm5ld/XKjLUArEG7bpqvXXKXrTUL0gZrNMIDq
 qVqs9Qq6EldyEPrD0e/arnUd1sl/T8Q/WwCK4d+r5t3li3IV3c/C37wKGTqLJEqBq4gH
 KYeT3kzDNtwRNg5rJK6BsuEwVRuIYbhsS+WxF5uOYj5ZGGOgFmfRPArME4J0+Cb4AZZX
 HHyGiyunGldxmM+Ndy77N1PlMKroKp86aufi+0mP4/nkXDomwjRJjnBmz+X/8kCbtMbO
 4fohk4s+S9wuVq69XxadpAAMwgEXEgsqpyS8cVxJ0eoNJm4Y/3PrKWK59S6Z5Oril7xS
 +7Hw==
X-Gm-Message-State: AOAM532j1Wtg4NvKImx1eU4rGik/1lzptcIAj2JRIDiIy7MIrR65lYMb
 W2NSwCyaynHqiIEczdv7Ta4Y0no8tBH101RUNJs=
X-Google-Smtp-Source: ABdhPJycaL+NzkieFfGTxG5dtp6ak3z1+M1pI5drFoNsm9dqeE0+7c9OGzbyaFRpZ80QjPECAhulvix1UEfH3cqVbvI=
X-Received: by 2002:a05:6e02:f81:: with SMTP id
 v1mr6807097ilo.246.1590038373289; 
 Wed, 20 May 2020 22:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <1590023130-137406-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1590023130-137406-1-git-send-email-shawn.lin@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 21 May 2020 10:49:21 +0530
Message-ID: <CANAwSgStorF2HwcTYFC6Q6NzZtYq9qL-LLwq9ZU10oTgXVe9aw@mail.gmail.com>
Subject: Re: [PATCH 1/2] PCI: rockchip: Enable IO base and limit registers
To: Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_221935_321978_DB1D5EC9 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Simon Xue <xxm@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 at 06:35, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> According to RK3399 user manual, bit 9 in PCIE_RC_BAR_CONF should
> be set, otherwise accessing to IO base and limit registers would
> fail.
>
> [    0.411318] pci_bus 0000:00: root bus resource [bus 00-1f]
> [    0.411822] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff]
> [    0.412440] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])
> [    0.413665] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> [    0.414698] pci 0000:01:00.0: reg 0x10: initial BAR value 0x00000000 invalid
> [    0.415412] pci 0000:01:00.0: reg 0x18: initial BAR value 0x00000000 invalid
> [    0.418456] pci 0000:00:00.0: BAR 8: assigned [mem 0xfa000000-0xfa0fffff]
> [    0.419065] pci 0000:01:00.0: BAR 1: assigned [mem 0xfa000000-0xfa007fff pref]
> [    0.419728] pci 0000:01:00.0: BAR 6: assigned [mem 0xfa008000-0xfa00ffff pref]
> [    0.420377] pci 0000:01:00.0: BAR 0: no space for [io  size 0x0100]
> [    0.420935] pci 0000:01:00.0: BAR 0: failed to assign [io  size 0x0100]
> [    0.421526] pci 0000:01:00.0: BAR 2: no space for [io  size 0x0004]
> [    0.422084] pci 0000:01:00.0: BAR 2: failed to assign [io  size 0x0004]
> [    0.422687] pci 0000:00:00.0: PCI bridge to [bus 01]
> [    0.423135] pci 0000:00:00.0:   bridge window [mem 0xfa000000-0xfa0fffff]
> [    0.423794] pcieport 0000:00:00.0: enabling device (0000 -> 0002)
> [    0.424566] pcieport 0000:00:00.0: Signaling PME through PCIe PME interrupt
> [    0.425182] pci 0000:01:00.0: Signaling PME through PCIe PME interrupt
>
> 01:00.0 Class 0700: Device 1c00:3853 (rev 10) (prog-if 05)
>         Subsystem: Device 1c00:3853
>         Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Interrupt: pin A routed to IRQ 230
>         Region 0: I/O ports at <unassigned> [disabled]
>         Region 1: Memory at fa000000 (32-bit, prefetchable) [disabled] [size=32K]
>         Region 2: I/O ports at <unassigned> [disabled]
>         [virtual] Expansion ROM at fa008000 [disabled] [size=32K]
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
>  drivers/pci/controller/pcie-rockchip.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index c53d132..f82452b 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -407,8 +407,11 @@ void rockchip_pcie_cfg_configuration_accesses(
>  {
>         u32 ob_desc_0;
>
> -       /* Configuration Accesses for region 0 */
> -       rockchip_pcie_write(rockchip, 0x0, PCIE_RC_BAR_CONF);
> +       /*
> +        * Configuration Accesses for region 0.
> +        * Bit 9 is for enabling IO base and limit registers.
> +        */
> +       rockchip_pcie_write(rockchip, BIT(9), PCIE_RC_BAR_CONF);
>
>         rockchip_pcie_write(rockchip,
>                             (RC_REGION_0_ADDR_TRANS_L + RC_REGION_0_PASS_BITS),
> --
> 2.7.4
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
