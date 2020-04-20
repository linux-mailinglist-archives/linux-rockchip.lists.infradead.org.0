Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7E01B1183
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Apr 2020 18:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WP39FHW1+n/OFoPMovyY8LoOk3njQr2osVX/wCZNhgo=; b=Np4sSAZa/VAAB2
	oC8LlyZ7RzUYzulx7aR7EKlztvtQMGi/3XY9dLNtAPE7mZSyGBzsQlKfRuSGWZLuSIWfvELeGSJLZ
	j9pXISM/Ksd9cJaC3SjEjc9tKLViiY5PDq6JMCjCDW+8PmqxDcGUUc4in+XXctfOch3+bIvUEPHQG
	MbiS2IGBUH+A8PG2E9VUY3rHCgEkCSJENjVgKLe7i+PL8xpto7eHd56m00CBj71pkMk5eK2AkwAQF
	n0IdrA3Ecc8mcieotzglTjQUk6brcoYYh0VqIikZawvDkO91aWDL4fgvf/cSirY/E1EDz5wSxgRqN
	U9+CmNZ7w4E7Skw9TsWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZFY-0007y6-94; Mon, 20 Apr 2020 16:26:24 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZFG-0007hW-Jm
 for linux-rockchip@lists.infradead.org; Mon, 20 Apr 2020 16:26:08 +0000
Received: by mail-io1-xd41.google.com with SMTP id o127so11677639iof.0
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Apr 2020 09:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cqJXY0DGUdpdOdNv3iPb3zauaqhfpkw7B8kD1GXlyK4=;
 b=Z03g52B5hrQva2t/SdLwnoWvjijEqxdh6HYSv9ze8Y3yt1uGuCbJCZ1hUD5XpwXVsy
 3kg2RiGkBMEy/cplIT8EN1wipIkcKrvykquQ6QWIibhdPxLxp8xlsqGJetiTVtY7NHN3
 CB5puqtTo8zmXfF+K6wdm8/bTJ9iyC10NHQGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cqJXY0DGUdpdOdNv3iPb3zauaqhfpkw7B8kD1GXlyK4=;
 b=hG2Zp4klV223KqGo7aR1S+vMcrF4R6PWmmeRYPxAo36CbDlORav3IuSL6SezXCxMTg
 /ujkhmtgsjgIvliIr1qfoUJqrDkgvq+fUpUL/cAAW4fHQtqlSbw0rFKi9UAzkTaJi4V+
 1OptTYKmXbuumjjm/zV+hcSPPA/17pgyJ9HbZp+jBLoInb/maoWjt15d8ZMuiVpqP5y4
 PMFfnNfitGwWO9pD3ra1XeAztFEI27ud8qh4ccjqM5IApIoXLJQ0W8WeKeWA6cTj0GrD
 ZUAuO3wsQ6ukB5Mtion8aOJQmGt9yUQjirYhTmvMAwH4ewdAr4UofVOzPkyDPIDcj0Gt
 UhJA==
X-Gm-Message-State: AGi0Puaqwd21etv20k2rx74HtxMfMJL02JAIto1LWJdHOCHMTJdV4Mq/
 yKi1HtRrxp0DrX4FrQxG8/B4sQNwGEmGtRgVJ+Nreg==
X-Google-Smtp-Source: APiQypLf0xtMcfePT0EXM/gkuVgNQbxk4PGiKZYCAVdAOnpSrsSZr1jobFdhvCtHf7oHaXJyDj9Aw4gWO/pIu7QG2iI=
X-Received: by 2002:a5d:8155:: with SMTP id f21mr16939598ioo.151.1587399965454; 
 Mon, 20 Apr 2020 09:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
 <20200410182631.11951-3-jagan@amarulasolutions.com>
 <CALeDE9O2QaO7CnHPb1nQ2-J6NCWYD=PDSbhtMi-3N68Azm=nVw@mail.gmail.com>
In-Reply-To: <CALeDE9O2QaO7CnHPb1nQ2-J6NCWYD=PDSbhtMi-3N68Azm=nVw@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 20 Apr 2020 21:55:54 +0530
Message-ID: <CAMty3ZAhQ78R3wA7_k-_QFTUeprqmwanSUViFeKSK_ryXmnQSQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] rk3399: Add boot flash script offset, size
To: Peter Robinson <pbrobinson@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_092606_800274_809DC1A5 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Tom Rini <trini@konsulko.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 9:21 PM Peter Robinson <pbrobinson@gmail.com> wrote:
>
> > Most of the SPI flash devices in rockchip (rk3399)
> > are 16MiB size. So, let's use the script offset at
> > the end of 8K.
>
> You wouldn't have the commands for writing the
> idbloader.img/u-boot.itb to these SPI flash on one of these devices by
> chance?

https://wiki.amarulasolutions.com/bsp/rockchip/rk3399/roc-rk3399-pc.html#booting-from

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
