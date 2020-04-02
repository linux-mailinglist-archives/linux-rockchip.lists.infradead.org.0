Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2850B19BB41
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 07:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KsbHv9c0C8Y+RJhrh5BHKpbU4Ujcl1OKD/k+hUf/TR4=; b=m1lFmZ23IYlENR
	TAiUVBGmaZK7hJN9SUVg9b0cNfh/UIaRDrmNnkcyO3bpv/DHS4NYFdJMEjJ4mkVPTUpvqTsulHkcf
	lod312BvrrS2MmId3Tg7JrabmudtPoSKdeQfdSLxrKWZ0T5NdjLI7SaMCSdphXaOTewK4I+8vRAES
	1QS+CbnMJ8FS8Fr4zu5sKP4QAMOcIVJflDLafdGGh+Ho7tznHz8cm1GMvPQNYCuWs4fMlVyCVcxC7
	DuZpBFpGsXna6DXzh88zPR/UlWXo3q8HkArHr2W3Zh4diZ9LlDFPIQmY3dXnMvqnFeHJ/E00E2uQo
	MOFFS0zDkccekqlg5J0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJryA-0007rS-0r; Thu, 02 Apr 2020 05:00:46 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJry5-0007qX-S0
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 05:00:43 +0000
Received: by mail-wr1-x432.google.com with SMTP id p10so2583286wrt.6
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Apr 2020 22:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ZLUHaoWhbH/Dzyzr0xEcObCP8Iv6Fp8ur5CbaU50dzA=;
 b=j+ZLVn3Dg3089XdQx7cc27hvYR7vTQ+JPZa6LG49ZGD2sUXCw6wOiivj+IMVdLyFV6
 nVWDLexSEfO1zkCOtzc/mvfA9o6MagoWni0jQLZ49MYYktZp1MgTemcwFobpWI9EUi/h
 4uptNEdidZmG1oTkxVPe+c81yogRyGZe31Bws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ZLUHaoWhbH/Dzyzr0xEcObCP8Iv6Fp8ur5CbaU50dzA=;
 b=COLKNaT5EdNSZZpHORCJGCalVsrJGWLAyeiXWXV9d49GevX88W9u85KVzqURo4lG1u
 p+Ie4IuxDI6HMWpWgMhYKGwRUZjTcjQSW2gTvrpJk2X4+1achiph81HJa1KusODM/bP1
 Jls+8PPWjwdXKpLHoHlhgcBwJm/JyEAS/zXIx2GTLgSUlja3iT0y+lay6r5OOqFLYnTT
 wzBTYgvgfkK2mno3fY8DALCXd6xpf2sS9y6O6e5yYiyzhCfqk1kgXLse3ALUINEaJFlQ
 +VyGKWXXu33B+CdvsRTMRJ5UEx5QYn2Ydi1AdV8/BAc+1O7AkRiNgTZ8wE6wZPHtVzCs
 5a1A==
X-Gm-Message-State: AGi0PuZBaqecDDAbTYSuFtKUeNmbPEblVmuUrGcVY9YvJyOgn7dutcgj
 m5cscYnjFwqPwyrXuZ4BRFIiiyVW0e46ZUGwlICVfw==
X-Google-Smtp-Source: APiQypKG0PY1TyrOO1cg60AoOEQ7L6GZ8mQ5k3aOejmcfsO0qUz6v6JPUWvM/UobuZUO0a9dpDIu16RTj28V5C85dHQ=
X-Received: by 2002:adf:ed42:: with SMTP id u2mr1524189wro.175.1585803639471; 
 Wed, 01 Apr 2020 22:00:39 -0700 (PDT)
MIME-Version: 1.0
From: Suniel Mahesh <sunil@amarulasolutions.com>
Date: Thu, 2 Apr 2020 10:30:28 +0530
Message-ID: <CAM+7aWt+xY6xJ9sHUk_AwAX1hzTpcgAH1EhofRgO2b+d+YuWQg@mail.gmail.com>
Subject: on-board LED's on rk3399-roc-pc
To: Markus Reichl <m.reichl@fivetechno.de>, djw@t-chip.com.cn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_220042_332939_35FE19AC 
X-CRM114-Status: UNSURE (   4.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Markus, Levin and all,

rk3399-roc-pc board has three on-board LED's:

1. work-led(green) assigned as  linux,default-trigger = "heartbeat"
2. diy-led(red) assigned as  linux,default-trigger = "mmc1" ---- which is emmc
3. yellow-led(yellow) assigned as  linux,default-trigger = "mmc0" ----
which is SD

I have a  requirement where diy-led(red) should be on while linux
boots and until poweroff, indicating
full power mode.

here are my questions:
1. Since diy-led(red) is already assigned to mmc1, how could I achieve
the above requirement.
    In the diy-led node I changed default-state to "on", but it didn't work.

2. Is there any specific reason why diy-led(red) is assigned to mmc1 ?

3. Is it possible to swap work-led with diy-led, meaning work-led
assigned to "mmc1" and diy-led
   assigned as "heartbeat" or "default-on" ?

Please suggest/comment on my requirement.

Thanks and regards
Suniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
