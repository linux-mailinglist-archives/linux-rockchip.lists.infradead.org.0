Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C1915332B
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Feb 2020 15:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jqy4CFdjQgljKqeoT14ETe8xwbKlOL5of1uL33kpVAE=; b=G3XSeP3/8Mhx9j
	yFYdZKTz67ymgh6pHaG2I0Z6RKdNWxqjrOCSWQzTfhL7tCQxwmLYl/EI5qWl0LpWfxlnfYu8W8aDJ
	d09MLuiN7fmojQATdzV5+RgWCGkREv9E6hUropW3UnydSSOaVmRJsYwdhfGZ8LYfNOqRfrY4ZmK0J
	SWoq1olRxC564yjMmtEZygXNgcnRgTpIDYNE5uQeGakqv/KnVKILTYENdhbzHA+FVgyFdPRucaQns
	0o8IchdZdz86CFYVvN6TBfTWAgt2BskInraE+civcvozG8GHqemvJBNuTjFf2gKeOnNZuxQVE5c17
	vnZwvFdoDyyJn5nSisEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLoN-0004b7-Ey; Wed, 05 Feb 2020 14:37:51 +0000
Received: from vegas.theobroma-systems.com ([144.76.126.164]
 helo=mail.theobroma-systems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLoK-0004aM-Fk
 for linux-rockchip@lists.infradead.org; Wed, 05 Feb 2020 14:37:49 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]:49330
 helo=phil.localnet) by mail.theobroma-systems.com with esmtpsa
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
 (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1izLo5-0003tf-SB; Wed, 05 Feb 2020 15:37:33 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: dwc2: gadget mode and timeout with GRSTCTL_CSFTRST
Date: Wed, 05 Feb 2020 15:37:33 +0100
Message-ID: <3600884.FGW0xRIbGs@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_063748_675645_48F04C67 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-usb@vger.kernel.org,
 linux-rockchip@lists.infradead.org, John Keeping <john@metanate.com>,
 Thinh Nguyen <thinhn@synopsys.com>, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

right now we're experiencing strange behaviour with a dwc2 on Rockchip's
PX30 soc.

With a cable connected to the port, the configfs-snippet below seems to
work and at least creates a acm device on the host. Though I'm told that a
	 picocom -b 115200 /dev/ttyACM
sometimes works ok but also sometimes returns -EBUSY or hangs.
[But I guess that is a separate problem]

But if there is no cable connected when trying to do the configfs steps
we end up with
	dwc2_core_reset: HANG! Soft Reset timeout GRSTCTL GRSTCTL_CSFTRST
and no gadget gets configured.


So I guess to get a feeling for the issue, is this something to be
expected, or at least a known issue, with maybe a fix flying around
somewhere?

Or is this working on other dwc2 platforms correctly and is caused
by some other part talking to the dwc2 doing strange things?


Thanks
Heiko

-------- 8< ---- configfs snippet ------ >8 --------
cd /configfs/usb_gadget
mkdir g1
cd g1
echo "0x1d6d" > idVendor
echo "0x0104" > idProduct
mkdir strings/0x409
echo "0123456789" > strings/0x409/serialnumber
echo "Theobroma Systems" > strings/0x409/manufacturer
echo "Cobra Debug Serial" > strings/0x409/product

# create config
mkdir configs/c.1
mkdir configs/c.1/strings/0x409
echo "conf1" > configs/c.1/strings/0x409/configuration

# create function
mkdir functions/acm.usb0
ln -s functions/acm.usb0 configs/c.1

# activate new config
echo "" > UDC
echo "ff300000.usb" > UDC




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
