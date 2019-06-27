Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66B957E21
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 10:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixbeGfzFuH1jX0G3Vp8v9Nb/8OiAan4ignDfdM69iKw=; b=A7B8FIdysHhw0J
	2f7TzCwq0xbcsgit8RUAYX74zRuq9w21pJL5ifUnMMD2FNoQm4j2tzoBPnmoMh6ftWE5uO2hTYwUs
	Y1qoRovnFKWPOy5Tr46Y1LagGdfJP53J1OXyopUp5YcmqQKgYIN5UOfpUGNd7n2gY2iT1OO4D7AtG
	eSGG7J916+8R6ns8Daa7PCOGC9WdBF8S3JK7q9aYTOZJ63udE3eGClT1GR+HjSUs8AIi7W4H1PXsd
	iOs0bpLhNm5I9zt0snkspRM2Au+SOEkOxiXoJY8FZXCTQ5nhpUkxqEOMxlWSMbnwD0GcptGRYNsx9
	NjzbSerjZUjMsRIeTCRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPcv-0007HT-7D; Thu, 27 Jun 2019 08:19:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPca-00075w-Cn; Thu, 27 Jun 2019 08:19:09 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1hgPcN-0006oO-B4; Thu, 27 Jun 2019 10:18:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v10 0/6] support a new type of PMIC,
 including two chips(rk817 and rk809)
Date: Thu, 27 Jun 2019 10:18:54 +0200
Message-ID: <2084806.DiqCa91xLP@phil>
In-Reply-To: <20190626115251.GR21119@dell>
References: <20190621103258.8154-1-tony.xie@rock-chips.com>
 <20190626115251.GR21119@dell>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_011908_585315_8BA6EB81 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 huangtao@rock-chips.com, linux-rockchip@lists.infradead.org,
 Tony Xie <tony.xie@rock-chips.com>, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, xsf@rock-chips.com,
 sboyd@kernel.org, devicetree@vger.kernel.org, broonie@kernel.org,
 chenjh@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Lee,

Am Mittwoch, 26. Juni 2019, 13:52:51 CEST schrieb Lee Jones:
> On Fri, 21 Jun 2019, Tony Xie wrote:
> 
> > Most of functions and registers of the rk817 and rk808 are the same,
> > so they can share allmost all codes.
> > 
> > Their specifications are as follows:
> >   1) The RK809 and RK809 consist of 5 DCDCs, 9 LDOs and have the same
> > registers
> >      for these components except dcdc5.
> >   2) The dcdc5 is a boost dcdc for RK817 and is a buck for RK809.
> >   3) The RK817 has one switch but The Rk809 has two.
> 
> Just tried to apply this set to a v5.2-rc1 base, but it doesn't seem
> to do so cleanly.  Would you be able to rebase and resend please?

I took the liberty of rebasing patch 3 accordingly and sent it as reply
to the original patch3 as (v10.1). The other patches did apply cleanly
after that.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
