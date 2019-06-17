Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2EA48374
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 15:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crQQ6kgshvO59Zwh0wHKRDzyho+nL9133ppbbn1vX2I=; b=gbrZHDqpH8gNR2
	M6uqpnIEStxIcZK+wCpG1LrDaleoYct+bFHmtAJXoObwqsPheTGpJMnm8CFiZ0oHysSSASl4wTRJG
	gtpnsasOs/KjtOFa1RMck8BJlmV1rDNW66qB/139QeTgWE87CjVFZMUFlKYGrGiS4QQptCQ9AYqt1
	FwRvN0JvZyq0W2+0QhN7BtZUkecMZ6Vga+gGGEyJrmo7BJPYT9tIAsf+lxVKvJrNEfOdS8AgcZeO6
	XXT4OhO8TEBo9KldTozSDCzwxG/Ly07RdiJtLwYtsnrg9rYKKRM2zpY6p7yjjYjYIPAwy72KP3IZz
	VSUbjX6Hc4UFDyKd19cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrKo-0005KH-II; Mon, 17 Jun 2019 13:06:06 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrK9-0004gD-4X
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 13:05:26 +0000
Received: by mail-lj1-x241.google.com with SMTP id 131so9235504ljf.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 06:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6+a6LzOkznKqnUaLZCO2aGdfchIFnCvw96EhVNt76fQ=;
 b=XouSp0zb13XJfEwjwDOFYMOLvCaplpCbR1EhLP7aU/UoM67o6jZ3XIV7sh7e4ZCHho
 L5zhC+BnqVXvIAGw4zfZQY09niJE8jWW5KeiIRnnt5xqMSQAFJ1pTRKjPpkbnpBBKLFz
 OWefyFJbk/3yzefUCuIO5fAEs3aMF7Xq6/kagrKChXsG8YRTTd4MAuNfbscKLa2gWRWc
 7Op6JWSZ0205sSAYr7nuqZruqP+LYELqeh4lZPql1urcgeQaU5LonxEzuHyOGWG1FmEt
 sHzLVyWo4fKe/d1EKDbo4Lzx8ih2rWQPO6lgpQh0WJKAJbM2HjmQwrqUMsbB2aTMgUEw
 7xGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6+a6LzOkznKqnUaLZCO2aGdfchIFnCvw96EhVNt76fQ=;
 b=TR7A85MboI833d57mr29oDEQSpbq+PZrgIEE8RNpnClWM5KvahaEV4Xuq2CzrzXtM0
 BFPJtIz5iJINRcV1XBVgEUVYdCuGBshqLjjTsuamDU0I97S3YRngol/cMfFnxBXKSLSm
 UyHQfpjgJH2ciAaV+vAA4G8/fABuvw+QrTM7AatdtepkpGOhJzev9Ue7GAUbBV+tnHqP
 +nYREUoHQ5PBCiAbyEzYjChh7xK5CHSYuZ0VR1GISKVFPALyK70QYCFpHuTogj/p19+E
 0gQbNT83om1ReStIbmc007JCh0fDvmzRHR0DWSXYbbRYT0vTtmiVT9IBo8xxN5IyLoSR
 WeFQ==
X-Gm-Message-State: APjAAAUNwHWeTD8uzk0+F6Rl2sHro5ZOck4sKjqvjIWfLkFSYdDeuBhg
 9c2Ng1pClRkjtigvYQIbsy93E9qOB23DRw==
X-Google-Smtp-Source: APXvYqygeZJwXbO27VNFJ5qUrcVWv9722IrZCLpcNBOACLZWz4kqEAtrLWQANhOhucMBMaw0qIMa8g==
X-Received: by 2002:a2e:89ca:: with SMTP id c10mr477133ljk.106.1560776723409; 
 Mon, 17 Jun 2019 06:05:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h13sm2105823ljb.10.2019.06.17.06.05.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 06:05:21 -0700 (PDT)
Date: Mon, 17 Jun 2019 05:14:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 3/3] Rockchip soc32 updates for 5.3 round 1
Message-ID: <20190617121440.hafvcek4m34m6cwd@localhost>
References: <3004130.oi6ZuZy1Zf@phil>
 <6757963.JBp9oB5bj2@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6757963.JBp9oB5bj2@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060525_202119_0C605D63 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:55:28AM +0200, Heiko Stuebner wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-soc32-1
> 
> for you to fetch changes up to c2af88f1a0cdf4cbe94b51fd93e52a3f55606a13:
> 
>   ARM: rockchip: fix missing of_node_put calls in smp code (2019-05-20 01:00:41 +0200)
> 
> ----------------------------------------------------------------
> Another missing of_node_put

Merged, thanks!


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
