Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821446CBF0
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jul 2019 11:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFczky1ifG/3ZmNFz22Bd20RSGxlZfGQ/MTzJXqciz8=; b=G/Jll+aCxyJ7UE
	1JiQXxOogPuIRb+HLVm/Chc+Ha2q/Zl3dzHDK0q9icZlSP3+N9gRezg2lAYvD7wXLCwxhc4YzqFi1
	U/Hiu//76Jry9qSD6lZ6RLGZgfjTi8BjBZNqqNHcDitn5UGIyslzuk1QuexE9sIS0e7exxLegaHYL
	RgKQrLHMsbmbw/+9fO8ZNVa2geMvcQw0U2iNHmxinF3QZ9ljpzL6DC5ASb4aO6lh+POOKyahcFQQ3
	AZIMZ18XILw/7LNAeojjYH8dIwgaYuTmIJOXxi0yxkuYeOtByCsCT360nh/Xnd6mKJAh6dmPuLkJm
	p3l1iiVH2Am3fuRemVNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2kT-0004bO-9A; Thu, 18 Jul 2019 09:30:49 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2kI-0004VV-MW
 for linux-rockchip@lists.infradead.org; Thu, 18 Jul 2019 09:30:40 +0000
Received: by mail-ot1-x344.google.com with SMTP id o101so28281638ota.8
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jul 2019 02:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V/hWLBKrEvOU+b96wZT+OxiXb8/ZMZP1TwL7r5CeIG4=;
 b=hW26cAZUwLPxJe5fdPyolpDlfljtvgUuIh4pVnGdLO0k1C2wi4rg35xONEvMCIUPoU
 0AcAFg+KQlhXx+VWzyXINY72/oSQtH86gn0hkIxowmJurcPjnbj+cIPuggC/Q5F/LC6N
 9oZ9bSBWKKV+ajFFeJ6z2qsv0auYZzTkhFHB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V/hWLBKrEvOU+b96wZT+OxiXb8/ZMZP1TwL7r5CeIG4=;
 b=SS3wrMw0z483iWNVTzERVV1bhlq2bHSjkJ4GMydfZUmGDgPF/i1gU6aZFxMNl47+uz
 W4KIZZ4+YqYU3bSamhHiR4KI/RY0sH/baUe2LVvEdrserCKAj36te3DMWlGM2/5oFckY
 DnMMApoSCG64J4COa9qvQV93v48A2hwG6mgo+Ac8NfY7FXyjq+tLdQ3MvGSqYt2yi8qr
 B6t/G9i0Qa9Ww7E2LF3Z+Kyq2BEmhUm8HvrDaVPnly1RhL9M0wo1rm7BWn1ZBXOnKoR7
 chzUUtFMUK9zvvVcfa04uKt6qq+TC1BA8CX5JOJSDbmumg+cjBm6If93VIfh3i5h/SYK
 x7/A==
X-Gm-Message-State: APjAAAUoK15h8IyrUnDiBweyEhNuEHEWLFvAAIrayS4O3WHbfaODGwWE
 s/CE6XxRYbtrlGCiZ6jlC06DsgEirQ8qNlxmX5GHZA==
X-Google-Smtp-Source: APXvYqzMMeFPHw7q0ZjgAVvTC06tsuXVtMcaYRmMyicLo0pjKbDaW6Trwwlt5H34k5ddxqlSeOl7U83NV4x7ab5PRB8=
X-Received: by 2002:a9d:6216:: with SMTP id g22mr32096427otj.349.1563442237189; 
 Thu, 18 Jul 2019 02:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-17-jagan@amarulasolutions.com>
 <709f0049-bd4a-d012-b2c7-d1cd75856590@rock-chips.com>
In-Reply-To: <709f0049-bd4a-d012-b2c7-d1cd75856590@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 18 Jul 2019 15:00:25 +0530
Message-ID: <CAMty3ZDpxyFjJaBZeUjtjrPkYHs=cFSc8EarbOmvDj2Ri3NHSg@mail.gmail.com>
Subject: Re: [PATCH v3 16/18] ram: rk3399: Add rank detection support
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_023039_266660_57046E99 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: YouMin Chen <cym@rock-chips.com>, Akash Gajjar <gajjar04akash@gmail.com>,
 Simon Glass <sjg@chromium.org>, U-Boot-Denx <u-boot@lists.denx.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever,

On Wed, Jul 17, 2019 at 6:23 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Hi Jagan,
>
>      I'm sure this patch have some problem with evb-rk3399, which I
> think make the ddr not init correctly and error happen in ATF.

Would you help to share the log for this. I made test on Nanopi-m4
which has same ddr type as evb, LPDDR3 and it booted fine with
mainline ATF (with PLAT=rk3399 bl31). Below is the log details.

U-Boot TPL 2019.07-00145-gcb5756d9e2-dirty (Jul 18 2019 - 14:55:23)
Channel 0: LPDDR3, 933MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=32 Size=2048MB
Channel 1: LPDDR3, 933MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=32 Size=2048MB
256B stride
Trying to boot from BOOTROM
Returning to boot ROM...

U-Boot SPL 2019.07-00145-gcb5756d9e2-dirty (Jul 18 2019 - 14:55:23 +0530)
Trying to boot from MMC1


U-Boot 2019.07-00145-gcb5756d9e2-dirty (Jul 18 2019 - 14:55:23 +0530)

Model: FriendlyElec NanoPi M4
DRAM:  3.9 GiB
MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
Loading Environment from MMC... *** Warning - bad CRC, using default environment

In:    serial@ff1a0000
Out:   serial@ff1a0000
Err:   serial@ff1a0000
Model: FriendlyElec NanoPi M4

Let me know if have anything to add?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
