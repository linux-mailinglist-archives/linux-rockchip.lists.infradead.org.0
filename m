Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26635117D1D
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 02:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YJx09Ru3FF06MWIfKQokfbZhyZ5QA+NAEK1PN2MTgs=; b=DiNhIgcuCk7vgZ
	3IeaMM7sDyKM7AlPVuECU0OODiMzjT2MbKq7JBW1l00+BZgtGRiknhiK+1s3OGIKfIEFPPRWJSMQ3
	ZfukjwpRDQuNobIo08X2DptzJOY+qgl9fVDM4uIatAdD9U1fOgh6Glf8svwFynyMeQjWTV0TFth+N
	8V9hRvd0ogrPQ0oG7nJaDRdvRj5gu0V0K07jArzunl2jnlPPpyh7hjsF9j6b/ojBFjk9VXH6StmuT
	2IcL9mgvO2MacBPgUG6IuzUOROSEqotaNruE1dzUXcXovqhLsE3RrmbcY4Xyo3Y4FrLVckRsijx9E
	JHM3PrZfbdIgC4v7n00w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieUFR-0000fd-4L; Tue, 10 Dec 2019 01:23:33 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieUFO-0000f4-0A
 for linux-rockchip@lists.infradead.org; Tue, 10 Dec 2019 01:23:31 +0000
Received: by mail-qk1-x743.google.com with SMTP id r14so6874459qke.13
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2019 17:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8LLOsXJUguuY43ARhOMf4LcyiwTN1Y1LouDaq9UTc8c=;
 b=l8IHO2F4OBehQ6RAeYuFdapsotQ8TbHCUSczGIhRxnhEq63hJyqhL9pn2DQtqSkF9M
 LM6Rq29oeSkI0g9+nCmMtEx5u6cJlfuqncrzHsNcTs4bH0LG2bnogzxyvf+rFJisHr0W
 ycWJmaanWMACBvkOxa7Z/dsq05RBZaZ00qqr2lcrUNYaw/sXuPSvqpbtuZas91tE89vc
 aQTyA7b0v6dn+AJXYl0Giv+OCgFzcMzuMRYkOpE5cMgmwqxcsdcSnBIOISuxeCwAB9Gi
 UTUhFXM/CjoSrAvlHZ9rPIRKrVLb3cYDf7UGOGfSalXSbv2cfsymq+Xc8sCixLqAC8fK
 Q2/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8LLOsXJUguuY43ARhOMf4LcyiwTN1Y1LouDaq9UTc8c=;
 b=XHGXqtNhD7jbd8SFglt6r1vE4szRYUr3/uodC2E9vIMmhC19zZhi8sXO64PV5VKm/9
 US3gfcq48UJUbZxo3jOQVKLH5WYppDzn0Fk6XfQy571fvGhu9JoJvjYQnpOyEVua51ng
 038wp4sdttDCgLI09T6+E+GBiHMNToc4gmugPnWjG9geo/c4aFROMa8+rXyHslksQAhz
 dR44zchd5Kxx8wz7BN+9oCxE9FroYquTVnVTf583Os46xxiiLSjpH0zPaQ+erKUaYpeK
 aF604wnzgi3Q8x9cFcy2XBHh2NDAmBxsaMGHGrDqqiQ+xH/yaOee/WcNXqRn7MbH83dO
 Rmzw==
X-Gm-Message-State: APjAAAWJjO6QAR89EQ1T6hZrt/CU0UZkSgS/wVV8g2B+3A6kLudozeKN
 ElBq9TmnT5b2eQEwCGNWQixHs8MjGjr5iNhVBaull9tNkKA=
X-Google-Smtp-Source: APXvYqzjXWJqiDvR4XrOmnS/wwxe/dqN3HQtt1l0npmtzq6c5YYzy4nb95gspjCoW42IMFsqRnkta9h4meyYzRNee7o=
X-Received: by 2002:a05:620a:143b:: with SMTP id
 k27mr29231855qkj.262.1575941008186; 
 Mon, 09 Dec 2019 17:23:28 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
 <b597b9a6-870a-8fbd-6490-59734c04367f@arm.com>
 <20191209100509.5cb950ac@x1.home>
In-Reply-To: <20191209100509.5cb950ac@x1.home>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 9 Dec 2019 20:23:18 -0500
Message-ID: <CAMdYzYpVoB4tPWcgOCTbxjCfSpYtWKzG_6ucgasJqZynUrqhcA@mail.gmail.com>
Subject: Re: [Question] rk3399 vfio-pci/sr-iov support
To: Alex Williamson <alex.williamson@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_172330_042922_CBAB6391 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 12:05 PM Alex Williamson
<alex.williamson@redhat.com> wrote:
>
> On Mon, 9 Dec 2019 14:07:02 +0000
> Robin Murphy <robin.murphy@arm.com> wrote:
>
> > On 09/12/2019 1:28 pm, Peter Geis wrote:
> > > Good Morning,
> > >
> > > I'm back with more pcie fun on the rk3399.
> > > I'm trying to get pcie passthrough working for a vm on the rk3399, and
> > > have encountered some roadblocks.
> > >
> > > First, vfio-pci doesn't work on the rk3399, as the pcie controller
> > > doesn't bind explicitly to a iommu.
> > > [37528.138212] vfio-pci 0000:01:00.0: assign IRQ: got 226
> > > [37528.138254] vfio-pci: probe of 0000:01:00.0 failed with error -22
> > >
> > > # find /sys/kernel/iommu_groups/ -type l
> > > /sys/kernel/iommu_groups/1/devices/ff8f0000.vop
> > > /sys/kernel/iommu_groups/2/devices/ff900000.vop
> > >
> > > # virsh start openwrt
> > > error: Failed to start domain openwrt
> > > error: internal error: Process exited prior to exec: libvirt:  error :
> > > internal error: Invalid device 0000:01:00.0 iommu_group file
> > > /sys/bus/pci/devices/0000:01:00.0/iommu_group is not a symlink
> >
> > That much I can help with somewhat: the major impediment is that RK3399
> > doesn't have an IOMMU in front of PCIe. As far as I'm aware your only
> > option is to resort to the "here be dragons" CONFIG_VFIO_NOIOMMU mode
> > (which I don't know an awful lot about beyond that it's a thing).
>
> And it's a thing that's really only useful if your motivation is to run
> something like DPDK in the host and you're not concerned about
> isolation between userspace drivers and the host kernel, and you don't
> mind tainting the kernel.  It's not useful for things like assigning a
> device to a VM as we can't readily do that without an IOMMU for
> translation.  Thanks,
>
> Alex

Thanks Robin,

That is an unfortunate limitation, especially considering the device
is supposed to support sr-iov.
I did try getting VFIO_NOIOMMU to work, but qemu does not like it, at
least for pci devices.
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
