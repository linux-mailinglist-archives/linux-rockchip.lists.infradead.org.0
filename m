Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A940EB6A2
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 22:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zfq8xYIqa5uJxcx1GAHaDknGCxCygDjJIAHswgaUrx4=; b=fxwIpX9WqwZlPM
	I/0LTWl/yn3hUDtrnelU5FqbyW0hwiOGYl2oQszfBynA9i5HWSyO390qB5MLDEi15jhPVwhfFZWm7
	9ruoRVBziXmZqwFhqBiF4FcwNwhc6gzxp+P+NWTpyQjGB+7vcRBSTGZ++7rkWu+DaDYgh78d0pPHf
	JKpDMHCg55NayuT5FHopJMBiXVALpPBMOKtbWJqRKJARAF7Zoe/czz/KxTzents444tnFxlk33Rwj
	qTviG3fBWUJFaGMs9k0LOUJjmOz8YfOFPXW988dNV3ci6ZzlFe91HWaDhy3M55rLn7zbbMsHcfCMM
	VrnPDnV14Y9sv49esnkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqPD-0001zE-3r; Sun, 28 Apr 2019 20:28:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqIy-0002RL-9l
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 20:22:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id e18so1564723lja.5
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 13:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HJe7LnGkDC9Wt4+gx21M26mW6URvKsQTzWzRQYmarxs=;
 b=tl3XS1cciKbpHJoJTJgwp6w+lz9EbF5CnOrcJrxxcmiyuJoJQ9aIFUndPEXZf5uLSx
 CjKTWKjKHeLMN7g964H+ThEN6kzdYm9EWr44B8DVQNYfLw5Ibhs8L/a0AKfksBxZtjyw
 gu4ji+6vn6GTvz0LVQ1jTY8aulOdWBEuRWNZmEmPpYggc/+I93KsCNyhXb1XjldtD0T8
 lL8zEvFiFM1UKcAOJLGHHDF2/JoRod866uV6+Z7G25i7twIZE0OooqTCJcHl+EDlWT6a
 qTJHlfgOdDx3ocUW4opZYpYcHWz0OHwE0upW5WDjsvvbjWhIwPDRW8iJBxjDE/SvxIZ+
 8kHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HJe7LnGkDC9Wt4+gx21M26mW6URvKsQTzWzRQYmarxs=;
 b=jp+CzuozPxkW1/+5fL9ykvNqiJGc9dWziEets3675QTB4UJ5HYCzbRHD9vhWvS5nRD
 dM6j6oN1RlTqwFm6CrcvMu9Irg17LB9CKY8TQZECbAZiGiezUkg6WE0octPSFq4tY+SY
 B6x7QV+swzXVX29SO5MmZUKpEFIsGGjk+ATQZePC9S1kyF2MO4HODIP+J4PXsvXkp5K2
 REcT9JcFOc2NFNEW2OGvBUalz9LIPBmvohG/DT4kIHYb0YTIIGrJobvq3YokRnK1/ya9
 Xe5W+RiYk9FuabF0LarhU1yYkxDairwA1z7DpYWehOOF5FN4Aak6Twd/DPJIF9NwZzy2
 tw/g==
X-Gm-Message-State: APjAAAXYgMZg0zgC8DCbXfQN6dioTCYDTRSOKVIKiRo24fGmyQbBGrR4
 vTQBDazaCEUM8+oziHYWWbItdQ==
X-Google-Smtp-Source: APXvYqzTtf9fxA+g/YyPjy3mhlWMEWcq0od7Wc1KbBGsAJDSWoPrhtfnpYYUSM+nCjjamdkH9RBP9Q==
X-Received: by 2002:a2e:894e:: with SMTP id b14mr26702804ljk.158.1556482902696; 
 Sun, 28 Apr 2019 13:21:42 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r10sm455212ljb.81.2019.04.28.13.21.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:41 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:00:44 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 2/5] Rockchip dts64 updates for 5.2 - round 2
Message-ID: <20190428200044.4midr65z7cvwle7b@localhost>
References: <3379363.gjmLGbHmEH@phil>
 <1566191.x5jUQ05xmK@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566191.x5jUQ05xmK@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132144_926991_A2B0B1CE 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 07:57:56PM +0200, Heiko Stuebner wrote:
> The following changes since commit b4e1728232d64b8040dae9b5405cf2db7ebd4e8b:
> 
>   arm64: dts: rockchip: Decrease emmc-phy's drive impedance on rk3399-puma (2019-03-27 13:45:27 +0100)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts64-2
> 
> for you to fetch changes up to 798689e45190756c2eca6656ee4c624370a5012a:
> 
>   arm64: dts: rockchip: fix IO domain voltage setting of APIO5 on rockpro64 (2019-04-23 23:29:08 +0200)
> 
> ----------------------------------------------------------------
> Bulk conversion of remaining gpios to the helper constants, new peripherals
> for the rk3328-roc-cc and some minor fixes for rk3399 and rockpro64.


Merged, thanks!


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
