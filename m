Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5D2135E30
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 17:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:MIME-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vgs+4fBedFl8vjgk73DPVj/wg/lV8ZFLkbcSPLOqP5s=; b=pc67nsIJ+zy7x3
	5LAf023cabW4xpGsqrjg+l+GD597bUiBqTTFSbd5i2dqaxO4Tm9W33HzT9VDJp5wwI0D71iswKaYD
	WESc7qmT+ZKqdXgftPi/NT7+KHpBg8qETLOmFh7inN39cgQVHINMnmr9Ew+NQH8xNSqo9YibCNMFN
	wr92+r1L09UlNKBNP+YLjQVWAutQKJx7JvfNUnvd4nniDOcSTR+yd0QM+x1AS75nl8cAZYzpy+pfz
	CYLl0JpRu9Cqb5E/Gfoq9HZ33OFOQzWZNDILWSuyHy6oAyKGs3gStXoNhwVxkbx0HssjGUFC1s2e1
	rOQCNETxxWfSFKZDn2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipabp-0002SU-Id; Thu, 09 Jan 2020 16:24:33 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaWW-0004y6-LT
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 16:19:08 +0000
Received: by mail-qk1-x733.google.com with SMTP id a203so6504270qkc.3
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 08:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:date:message-id:subject:to;
 bh=d88Xq53MKTDEJhK31IGTSeb6nL+720DGGuqob3OXfa0=;
 b=rwFdPy8zJV4rDrzUrwoPihzrxRWL7XDmnNQCU13Evd8P428xLWbB0UgvxHcq2BJqY3
 YbBbyQPLxRfmJGz+MMr10dlPkhL6KjBEZrFaYA7R7ZFC7IfUfETQwL2h4rUcF4zEdUlj
 la/rkaKJqCSfxyRTKFV3YB8ZXwbEUgeIBpJEOeoJANe+C8lJE7c/jznxB5bn7evGqJJM
 UfZqc8Y1CsOIQAFM7wl5hYnqpscgaqkaamRsrOIpuAxyQU20x5geSNeLEZHXftaWYeFL
 7RYDenLf2lsm9oJMxdfMul82aUBQm8VNgaBo3k6oPk/LR09QV7XrzolQl9klQ4lqkiTn
 Tc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:date:message-id:subject:to;
 bh=d88Xq53MKTDEJhK31IGTSeb6nL+720DGGuqob3OXfa0=;
 b=ijEDIbLfgzjHrXIuafadmKjum9B/Mx9uehECha3sOjllDe7OZGPxvKCrCii2xauhPa
 7vXtAL147xp9D1wMYPUfbZvE/78xohx5twZD607VQrW31tybi+3vaB5Vt3G0H7GgQoj2
 ukyvdvL9fhH1gXRwsqYmSuer7nFOcB1+L3yqHIoH35w8HaJjgCttj8nB6hzvfUm3Ofug
 0cBfaN4WWeshJdEt6d5W0E7LyPOdkiJmP+1QECrUN9rNY+4Cp6x1/c91p9LG7XVYN2Ce
 BLnfm4tU5MMOxG8gYekNnNCNlbOwHZe+OzuVd19deCnj4nrZpkRsc0Pk00MALY62SS4D
 C9WA==
X-Gm-Message-State: APjAAAWbdh5ES4n0rKb8szRMv/01SvnhtoOkEBGFfmKR5j5cmioehzca
 w5Fu4099J1xxGvcqcaGDAwSr9tcCG3HVRQ==
X-Google-Smtp-Source: APXvYqzzWkUVjRPOS0Y0J9KQ/NQNGUhmS1t/fSvFmJ5E0fawJ9DIhQ8e55Ag5otdDv0V3Vmr+DCekA==
X-Received: by 2002:a05:620a:16bb:: with SMTP id
 s27mr10743638qkj.368.1578586742217; 
 Thu, 09 Jan 2020 08:19:02 -0800 (PST)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com.
 [209.85.160.176])
 by smtp.gmail.com with ESMTPSA id i5sm3498762qtv.80.2020.01.09.08.19.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 08:19:02 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-qt1-f176.google.com with SMTP id i13so1493864qtr.3;
 Thu, 09 Jan 2020 08:19:01 -0800 (PST)
X-Received: by 2002:ac8:3510:: with SMTP id y16mr8837483qtb.6.1578586740862;
 Thu, 09 Jan 2020 08:19:00 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 9 Jan 2020 13:18:48 -0300
X-Gmail-Original-Message-ID: <CAP9ODKo8UPbU+JR45T2rjJH3FefcWw=tS71EmjFzVyPMA_R7gg@mail.gmail.com>
Message-ID: <CAP9ODKo8UPbU+JR45T2rjJH3FefcWw=tS71EmjFzVyPMA_R7gg@mail.gmail.com>
Subject: RV1108G run-time detection
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Heiko Stuebner <heiko@sntech.de>,
 Kernel development list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_081904_837744_3308B405 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

We would like to know if there is a way to distinguish between RV1108
and RV1108G versions in run-time.

The reason we are asking is because arch/arm/boot/dts/rv1108.dtsi
defines the following operational points: 408, 600, 816, 1008 MHz, but
the RV1108G version does not support 1GHz and its maximum operating
frequency is 800MHz (not 816 MHz).

In the i.MX SoCs we can read a fuse that indicates the "speed grading"
of the chip and decide which operating points could be used for that
particular version.

Is there such a mechanism in RV1108? Any suggestions to limiting the
RV1108G operational point at 800MHz?

Thanks

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
